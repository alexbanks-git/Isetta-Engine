#pragma once
#include <functional>
#include <string>
#include "Core/IsettaAlias.h"
#include <stdio.h>
#include <fcntl.h>

namespace Isetta {

class Filesystem {
 public:

  static Filesystem& Instance()
  {
    static Filesystem instance;
    return instance;
  }

  ~Filesystem();

  char* Read(const char* fileName);
  char* ReadAll(const char* fileName);

  char* Read(const std::string& fileName);


  std::ofstream ReadAsync(const char* fileName,
                   const Action<const char*>& callback = nullptr);

  std::ofstream WriteAsync(const char* fileName,
		  	  	  	  	   const char* contentBuffer,
						   const Action<const char*>& callback = nullptr,
						   const bool appendData = true);

  std::ofstream ReadAsync(const std::string& fileName,
                   const Action<const char*>& callback = nullptr);

  std::ofstream WriteAsync(const std::string& fileName, const char* contentBuffer,
                    const Action<const char*>& callback = nullptr,
                    const bool appendData = true);

  std::ofstream WriteAsync(const std::string& fileName,
                    const std::string& contentBuffer,
                    const Action<const char*>& callback = nullptr,
                    const bool appendData = true);

  void Touch(const char* fileName);

  void Touch(const std::string& fileName);

  bool FileExists(const char* file);

  int GetFileLength(const std::string& fileName);
  int getFileSize(std::string filename);

  static void Concat(const std::initializer_list<std::string>& path,
                     std::string* file);

  static inline const char PathSeparator() {
    return '/';
  }

 private:

  Filesystem();

  FILE * AccessFile(const char* fileName, const unsigned int access, const unsigned int share,
                    const unsigned int creation, unsigned int async);

  unsigned int GetFileError();

  void GetReadWriteError();

};

}  // namespace Isetta
