# IICT Chain Member

用于创建链上的 member 节点

## 步骤

1. 安装 docker 和 docker-compose
2. 复制.env_sample文件到.env，根据实际情况修改.env文件中的域名以及开放端口等环境变量
3. 运行`./run.sh`

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

请访问服务器地址:9000/partyinfo

4. 无法显示步骤 3

检查.env 文件下 DOMAIN 是否修改为服务器的地址，修改后要重启

5. 还是无法显示步骤 3

检查防火墙 udp，tcp 是否开启，尤其是 tessera 的 9000 端口

## Notes

Use hyperledger/besu and quorum to replace the old hyperledger/fabric
