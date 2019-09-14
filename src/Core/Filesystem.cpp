#include "Core/Filesystem.h"
#include <iostream>
#include <fstream>
#include <cstring>
#include <string>
namespace Isetta {

Filesystem::Filesystem(){}
Filesystem::~Filesystem(){}

char* Filesystem::Read(const char* fileName){
	std::cout <<" read file : " << fileName<< std::endl;
	char * getdata = new char [getFileSize(fileName)];
	std::ifstream infile(fileName);
	infile.read(getdata, sizeof getdata);

	if (infile.eof()) {
	    // got the whole file...
	    size_t bytes_really_read = infile.gcount();

	}
	else if (infile.fail()) {
		std::cout << "error" << std::endl;
	}
	return getdata;
}
char* Filesystem::ReadAll(const char* filename) {
	std::ifstream t;
	int lenght;
	t.open(filename);
	t.seekg(0, std::ios::end);
	lenght = t.tellg();
	t.seekg(0, std::ios::beg);
	char* buffer = new char[lenght];
	t.read(buffer, lenght);
	t.close();
	return buffer;
}

int Filesystem::getFileSize(std::string filename) { // path to file
    FILE *p_file = NULL;
    p_file = fopen(filename.c_str(),"rb");
    fseek(p_file,0,SEEK_END);
    int size = ftell(p_file);
    fclose(p_file);
    return size;
}

char* Filesystem::Read(const std::string& fileName){
	return Read(fileName.c_str());
}

bool Filesystem::FileExists(const char* file) {}
unsigned int GetFileError() {}
void GetReadWriteError() {}
std::ofstream ReadAsync(const char* fileName,
                   const Action<const char*>& callback = nullptr){}
std::ofstream ReadAsync(const std::string& fileName,
                   const Action<const char*>& callback = nullptr){}

std::ofstream Filesystem::WriteAsync(const char* fileName,
									 const char* contentBuffer,
									 const Action<const char*>& callback,
									 const bool appendData){

	std::cout << fileName << std::endl;
	std::cout << "CONTENT_BUFFER:  " << contentBuffer << std::endl;


	std::ofstream file;
	file.open(fileName);
	long unsigned int dwBufferSize = strlen(contentBuffer);
	long unsigned int dwBytesRead = 0;
	char* buffer = new char[dwBufferSize + 1];
	buffer[dwBufferSize] = '\0';
	strncpy(buffer, contentBuffer, dwBufferSize);
	file << buffer;
	return file;
}



std::ofstream Filesystem::WriteAsync(const std::string& fileName, const char* contentBuffer,
                    const Action<const char*>& callback,
                    const bool appendData){
	return WriteAsync(fileName.c_str(), contentBuffer, callback, appendData);
}

std::ofstream Filesystem::WriteAsync(const std::string& fileName,
                    const std::string& contentBuffer,
                    const Action<const char*>& callback,
                    const bool appendData){
	return WriteAsync(fileName.c_str(), contentBuffer.c_str(), callback,appendData);
}
void Touch(const char* fileName){}

void Filesystem::Touch(const std::string& fileName){
	std::ofstream outfile (fileName);
	std::cout << "START FILE TOUCH" << std::endl;
	outfile.close();
}

bool FileExists(const char* file){}

int Filesystem::GetFileLength(const std::string& fileName){
	int size = getFileSize(fileName);
	return size;
}

void Filesystem::Concat(const std::initializer_list<std::string>& path,
                     std::string* file) {
	std::string folder = "";
	for (auto p :path) {
		folder += p + PathSeparator();
	}
	*file = folder + *file;
}



}  // namespace Isetta
