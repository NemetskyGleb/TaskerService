#include <ClientSide/client.h>

void Client::Configure()
{
	configuration_->Configure();
	configuration_->Parse();
}
