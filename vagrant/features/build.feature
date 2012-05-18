Feature: Build tests

  Scenario: Connect to vagrant
    When I run 'vagrant ssh -c "uptime"'
    Then 'stdout' should have 'load average'
    Then it should exit '0'

  Scenario: Build monkey, build!
    When I run 'vagrant ssh -c "cd build; make"'
    Then it should exit '0'
    Then 'stdout' should have 'Entering directory'
    Then 'stdout' should have 'Build package: check_apache-auto.pl'
    Then 'stdout' should have 'Build package: check_bacula'
    Then 'stdout' should have 'Build package: check_drbd'
    Then 'stdout' should have 'Build package: check_iostat'
    Then 'stdout' should have 'Build package: check_linux-procstat.pl'
    Then 'stdout' should have 'Build package: check_linux-stats.pl'
    Then 'stdout' should have 'Build package: check_mem.pl'
    Then 'stdout' should have 'Build package: check_memcached.pl'
    Then 'stdout' should have 'Build package: check_mysqld.pl'
    Then 'stdout' should have 'Build package: check_postfix-mailqueue'
    Then 'stdout' should have 'Build package: check_puppet.rb'
    Then 'stdout' should have 'Build package: pmp-check-lvm-snapshots'
    Then 'stdout' should have 'Build package: pmp-check-mysql-deadlocks'
    Then 'stdout' should have 'Build package: pmp-check-mysql-deleted-files'
    Then 'stdout' should have 'Build package: pmp-check-mysql-file-privs'
    Then 'stdout' should have 'Build package: pmp-check-mysql-innodb'
    Then 'stdout' should have 'Build package: pmp-check-mysql-pidfile'
    Then 'stdout' should have 'Build package: pmp-check-mysql-processlist'
    Then 'stdout' should have 'Build package: pmp-check-mysql-replication-delay'
    Then 'stdout' should have 'Build package: pmp-check-mysql-replication-running'
    Then 'stdout' should have 'Build package: pmp-check-mysql-status'
    Then 'stdout' should have 'Build package: pmp-check-pt-table-checksum'
    Then 'stdout' should have 'Build package: pmp-check-unix-memory'

