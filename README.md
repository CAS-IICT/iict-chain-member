# IICT Chain Member

用于创建链上的 member 节点

## 步骤

1. 安装 docker 和 docker-compose
2. 运行`./run.sh`
3. 要求输入域名，必须是公网的服务器，域名前缀`http://`须加上

## 创建自己的链

1. 修改 DOMAIN 是必须的
2. 修改 `config/besu` 下的各类配置文件，尤其是 `config` 文件和 `static-nodes`，修改为自己的网络节点
3. 修改 `config/tessera/boot-member-config.json` 中的 `member` 主节点

## Docker Images List

-   besu
-   tessera

## Doc References

-   [web3.js](https://web3js.readthedocs.io/en/v1.5.2/)
-   [JavaScript 接口 web3js-quorum](https://consensys.github.io/web3js-quorum/latest/)
-   [besu API 文档](https://besu.hyperledger.org/en/stable/Reference/API-Methods/)
-   [tessera API 文档](https://consensys.github.io/tessera/)

## Issues

1. 遇到问题先查日志

```bash
docker logs -f 容器名
```

2. besu 可能遇到 keys 创建时的 permission 问题

```bash
chmod -R 777 config/nodes/member
```

3. 检查是否已经进入区块链网络？

请访问服务器地址:9000/partyInfo

4. 无法显示步骤 3

检查.env 文件下 DOMAIN 是否修改为服务器的地址，修改后要重启

5. 还是无法显示步骤 3

检查防火墙 udp，tcp 是否开启，尤其是 tessera 的 9000 端口

## Notes

Use hyperledger/besu and quorum to replace the old hyperledger/fabric
