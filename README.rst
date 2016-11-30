xenialvagrant
=============

Vagrantfile for booting up two separate VMs named ``server1`` and ``server2`` running Ubuntu Xenial 64.

**Installs and configures the following**

- `zsh <http://ohmyz.sh/>`_
- `Rust <https://www.rust-lang.org/>`_ with `rustup <https://www.rustup.rs/>`_
- `Go <https://golang.org/>`_ `1.4.3 <https://golang.org/doc/go1.4>`_ and `1.7.3 <https://golang.org/doc/go1.7>`_ with `gvm <https://github.com/moovweb/gvm>`_

**Commands**

.. code-block:: bash

  $ git clone git@github.com:silverfernsys/xenialvagrant.git xenial && cd xenial
  $ vagrant up
  $ vagrant ssh server1
  $ vagrant ssh server2

If you find anything broken, feel free to open an issue or submit a pull request 😈