#include <iostream>
#include <ClientSide/client.h>
#include <ConfigurationParsing/json_configuration.h>

int main()
{
	Client client(std::make_unique<JsonConfiguration>("path"));

	client.Configure();

	return 0;
}