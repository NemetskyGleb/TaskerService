#pragma once

#include "configuration.h"
#include <iostream>

class JsonConfiguration : public IConfiguration
{
public:
	JsonConfiguration(const std::string& path) : path_(path) {}
	virtual void Configure() override;
	virtual void Parse() override;
	~JsonConfiguration() { std::cout << "Calling json destr" << std::endl; }
private:
	std::string path_;
};