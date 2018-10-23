#include <assert.h>
#include <iostream>
#include <queue>
#include <vector>
#include <string>
#include <map>
#include <stdio.h>

#define MAXLEVEL 6
#define DEBUG -1
using namespace std;

struct NODE{
	int start;
	int end;
	int level;
	string name;
	NODE(){}
	NODE(int start, int end, int level, string name)
		:start(start), end(end), level(level), name(name){}
};

struct TAG{
	int level;
	string name;
	int nodeID;
	int mapID;
	TAG(): nodeID(-1), mapID(-1){}
	TAG(int level, string name, int nodeID, int mapID)
		:level(level), name(name),
		nodeID(nodeID), mapID(mapID){}
};

struct nodeComp{
    bool operator ()(NODE a, NODE b) const {
		return a.start > b.start;
	}
	bool operator ()(int a, int b) const{
        return a > b;
	}
};

typedef std::map<string, TAG> TAGMAP;
typedef std::vector<string> TAGLIST;
std::vector<NODE> defVec;
std::vector<TAGMAP> mapList;
TAGLIST finalLevel;
int maxLevel, mapCount = 0;

int buildFormat(int nodeID, int end, TAGMAP &upper, int slevel){
    NODE node;
    TAG tag;
    do{
        node=defVec[nodeID];
        if(node.start > end || nodeID >= defVec.size()) break;
        //cout<<slevel<<">> "<<nodeID<<": "<<node.name<<'-'<<node.level<<':'<<node.start<<'!'<<end<<endl;
        if(node.level < maxLevel){
            TAGMAP current=upper;
            nodeID=buildFormat(nodeID + 1, node.end, current, slevel + 1);
			mapList.push_back(current);
			upper[node.name].mapID=mapCount++;
            //cout<<"Update mapID: "<<(mapCount - 1)<<endl;
        }
        else{
            upper[node.name]=TAG(node.level, node.name, nodeID++, -1);
            //cout<<"Update nodeID: "<<nodeID<<endl;
        }

    }while(defVec[nodeID].start < end);
	return nodeID;
}

void findIndex(TAGMAP scanMap, TAGLIST tagChain, int level){
    if (level == tagChain.size()){
		int i = 0;
        for(i = 0; i < finalLevel.size();i++){
			string tagName=finalLevel[i];
            TAGMAP::iterator tagIt=scanMap.find(tagName);
            if(tagIt == scanMap.end()){
                cout<<"0 0 ";
                continue;
            }
            //cout<<"Node: "<<tagIt->second.nodeID<<endl;
            NODE node=defVec[tagIt->second.nodeID];
            cout<<node.start<<' '<<node.end<<' ';
        }
        cout<<endl;
        return;
    }
    string levelTag=tagChain[level];
    TAGMAP::iterator tagIt=scanMap.find(levelTag);
    if(tagIt != scanMap.end()){
        //cout<<"To: "<<tagIt->second.mapID<<endl;
        findIndex(mapList[tagIt->second.mapID], tagChain, level + 1);
    }
    else cout<<"Error "<<levelTag<<endl;
}

int main(){
    std::priority_queue<NODE, std::vector<NODE>, nodeComp> defList;
    std::priority_queue<int, std::vector<int>, nodeComp> lineList;
	int level, count, line;
	int start, end, lastLevel;
	string name;
	TAGLIST tagChain;
	while(cin>>level>>count){
        if (level == -1){
            maxLevel=lastLevel;
            while(cin>>name)
                tagChain.push_back(name);
            break;
        }
        cin>>name;
        if(level != lastLevel) finalLevel.clear();
        finalLevel.push_back(name);
		assert(level <= MAXLEVEL);
		int lineCount=count;
		while(lineCount--){
            cin>>line;
            lineList.push(line);
		}
        lineCount=count/2;
        while(lineCount--){
            start=lineList.top();
            lineList.pop();
            end=lineList.top();
            lineList.pop();
            defList.push(NODE(start, end, level, name));
        }
        lastLevel=level;
	}
#if DEBUG == 1
	while(!defList.empty()){
        NODE a=defList.top();
        defList.pop();
        cout<<"Range:"<<a.start<<'-'<<a.end<<"; "<<a.name<<'-'<<a.level<<endl;
	}
#endif // DEBUG
    // put defList into defVec
	while(!defList.empty()){
        NODE a=defList.top();
        defList.pop();
        end=a.end;
        defVec.push_back(a);
	}
	//cout<<defVec.size()<<endl;
	//cout<<"Now"<<endl;
	TAGMAP basicMap;
    buildFormat(0, end, basicMap, 0);
    findIndex(basicMap, tagChain, 0);
#if DEBUG >= 0
    char a[10];
    gets(a);
#endif // DEBUG
	return 0;
}
