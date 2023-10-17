# Ops Challenge - Bash Domain Analyzer

## Overview

Public domain information can be a liability when defending something like a web server against cyber attack. Shell scripts can be useful tools in automating the gathering of useful intelligence about a domain for both offensive and defensive purposes. Today you'll add a new function to your Bash admin tool that fetches domain information for a given input.

## DNS

The Domain Name System (DNS) is a hierarchical and decentralized naming system used to translate human-readable domain names (like "example.com") into IP addresses (like "192.0.2.1"). Computers and devices on the internet communicate using IP addresses, but remembering numerical IP addresses for every website or service is not practical. DNS provides a way to associate meaningful domain names with these numerical addresses, making it easier for people to access resources on the internet.

DNS serves several crucial functions:

**Name Resolution**

DNS resolves domain names to IP addresses, allowing devices to locate each other on the internet.

**Redundancy**

DNS operates in a distributed manner, with many interconnected DNS servers worldwide. This redundancy improves reliability and load distribution.

**Caching**

DNS servers store resolved mappings for a certain period. This caching reduces the need for repeated lookups and improves response times.

**Domain Hierarchy**

DNS uses a hierarchical structure with different levels, such as top-level domains (TLDs) like ".com," second-level domains (SLDs) like "example," and subdomains like "www."

## Domains

A domain is a user-friendly, human-readable name used to identify a location on the internet. Domains provide a memorable way to access websites, email servers, and other resources. A domain is composed of labels separated by periods (dots), and it follows a right-to-left hierarchy.

For example, in the domain name "www.example.com":

- "com" is the top-level domain (TLD).
- "example" is the second-level domain (SLD).
- "www" is a subdomain.

Domains can be categorized into different TLDs, such as generic TLDs like ".com," ".org," ".net," country code TLDs like ".uk," ".jp," and newer TLDs like ".app," ".blog," and more.

Registrants can buy and register domain names through domain registrars for a specific duration, usually annually. Domains must be unique within a TLD, but different TLDs can have overlapping names (e.g., example.com and example.net).

Domains are used for various purposes:

**Websites**

Domains are associated with web servers to provide a user-friendly URL for websites. For instance, "www.example.com" points to a web server hosting the content for that domain.

**Email**

Domains are used in email addresses, such as "user@example.com." The domain's mail server handles incoming and outgoing emails.

**Network Resources**

Domains can be used to identify network resources like servers, printers, and other devices.

**Branding and Identity**

Domains contribute to branding and online identity, making it easier for users to remember and access a website or service.

## `whois`

The `whois` command is a utility used to retrieve information about domain names, IP addresses, and various network-related information from domain registration databases and internet registries. It's particularly useful for obtaining details about ownership, registration dates, contact information, and more for domain names.

Here's a breakdown of how the `whois` command works and what it does:

**Command Usage**

The basic syntax for using the `whois` command is as follows:

  ```bash
  whois domain_name_or_ip_address
  ```

**Query Process**

When you run the `whois` command followed by a domain name or IP address, the command sends a query to a WHOIS server associated with the domain's top-level domain (TLD) or the IP address's regional internet registry. These servers maintain information about the ownership and registration details of the queried entity.

**Retrieved Information**

The information retrieved by the `whois` command typically includes:

  - Domain registrar details
  - Domain registration and expiration dates
  - Domain name server (DNS) information
  - Registrant contact details (name, email, address, etc.)
  - Administrative and technical contact details
  - Status of the domain (e.g., whether it's active or expired)
  - Registrar's WHOIS server and referral URL

**Output Format**

The output of the `whois` command can vary in format and content based on the registry and the domain in question. It usually consists of plain text information, but the structure might differ from one registry to another.

**Note**

Some WHOIS servers might impose rate limits or restrictions on the number of queries you can make in a certain time frame. Additionally, the `whois` command might not be available on all systems by default, and you might need to install it separately.

## `dig`

The `dig` command stands for "Domain Information Groper." It's a command-line tool used for querying DNS (Domain Name System) servers to retrieve DNS-related information about domain names, IP addresses, and other DNS records. `dig` is commonly used to troubleshoot and diagnose DNS-related issues, as well as gather information about domains.

Here's a breakdown of how the `dig` command works and some of its common options:

**Basic Usage:**

  ```
  dig <domain>
  ```

  This will perform a simple DNS query for the specified domain name and display various DNS-related information.

**Common Options:**

  - `-t <record type>`: Specifies the type of DNS record to query for (e.g., A, AAAA, MX, NS, etc.).
  - `-c <class>`: Specifies the DNS class (usually IN for Internet).
  - `+short`: Displays only a concise output, useful for scripting and parsing.

**Example Usage:**

  - Query A record for a domain:

    ```
    dig example.com A
    ```

  - Query MX records for a domain:

    ```
    dig example.com MX
    ```

  - Query NS records with a short output:

    ```
    dig example.com NS +short
    ```

**Output Information:**

  `dig` provides detailed information in its output, including the queried DNS records, their TTL (Time To Live), the authoritative DNS servers, and more. The output includes sections like "QUESTION," "ANSWER," "AUTHORITY," and "ADDITIONAL," which provide different types of information.

**Caching:**

  DNS information is cached by your system and local DNS servers. When you use `dig`, you might get results from your local cache instead of directly querying authoritative DNS servers. You can use the `+trace` option to force `dig` to query from the authoritative DNS servers directly.

## `host`

The `host` command is a command-line utility in Unix-like operating systems used to perform DNS (Domain Name System) lookups. Its primary purpose is to translate human-readable domain names into IP addresses or vice versa. It can also provide additional information about a domain, such as mail server records (MX records) and name server records (NS records).

The basic syntax of the `host` command is:

```bash
host [options] domain
```

Here, `domain` represents the domain name you want to look up.

Some common options and examples of using the `host` command are:

**Basic Lookup:**

  ```bash
  host example.com
  ```

  This command will perform a DNS lookup for the IP addresses associated with the domain `example.com`.

**Reverse Lookup (IP to Domain):**

  ```bash
  host 8.8.8.8
  ```

  This command will perform a reverse DNS lookup for the IP address `8.8.8.8` to find the corresponding domain name, if available.

**Specify DNS Server:**

  ```bash
  host example.com ns1.example-dns-server.com
  ```

  This command will perform a DNS lookup for the domain `example.com` using the name server `ns1.example-dns-server.com`.

**Display Only Mail Server Records (MX Records):**

  ```bash
  host -t MX example.com
  ```

  This command will display the mail server records (MX records) for the domain `example.com`.

**Display Only Name Server Records (NS Records):**

  ```bash
  host -t NS example.com
  ```

  This command will display the name server records (NS records) for the domain `example.com`.

**Display IPv6 Addresses:**

  ```bash
  host -t AAAA example.com
  ```

  This command will display the IPv6 addresses associated with the domain `example.com`.

**Display All Records:**

  ```bash
  host -a example.com
  ```

  This command will display all available DNS records for the domain `example.com`, including A, AAAA, MX, NS, and more.

## `nslookup`

`nslookup` stands for "Name Server Lookup." It's a command-line tool used for querying Domain Name System (DNS) servers to obtain information about domain names, IP addresses, and other DNS-related information. This tool is used to diagnose DNS-related issues, retrieve DNS records, and troubleshoot network problems.

The basic syntax of the `nslookup` command is as follows:

```
nslookup [options] [hostname] [dns-server]
```

- `hostname`: This is the domain name or IP address for which you want to retrieve DNS information.
- `dns-server` (optional): Specifies the DNS server to use for the lookup. If not provided, the system's default DNS server will be used.

Here are some common uses of the `nslookup` command:

**Retrieve IP Address from Domain Name:**

  If you provide a domain name as the argument, `nslookup` will return the corresponding IP address.

  ```bash
  nslookup example.com
  ```

**Retrieve Domain Name from IP Address:**

  If you provide an IP address as the argument, `nslookup` will attempt to return the corresponding domain name.

  ```bash
  nslookup 8.8.8.8
  ```

**Specify DNS Server:**

  You can also explicitly specify a DNS server to use for the lookup. This can be helpful for troubleshooting DNS-related issues.

  ```bash
  nslookup example.com 8.8.8.8
  ```

**Interactive Mode:**

  Running `nslookup` without any arguments will start an interactive mode where you can enter commands and retrieve information for multiple queries.

  ```bash
  nslookup
  > set type=MX
  > example.com
  > exit
  ```

The output of `nslookup` typically includes information about the queried domain, such as its IP addresses, mail server records (MX records), and the authoritative DNS server responsible for the domain.

Keep in mind that the `nslookup` command might not be available on all systems, as different operating systems may use different tools for DNS-related queries. In some cases, you might need to use the `dig` command or other alternatives.

## Resources

- [How to Use the whois Command on Linux](https://www.howtogeek.com/680086/how-to-use-the-whois-command-on-linux/)
