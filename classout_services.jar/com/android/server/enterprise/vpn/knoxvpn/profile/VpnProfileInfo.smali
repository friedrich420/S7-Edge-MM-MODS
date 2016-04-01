.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
.super Ljava/lang/Object;
.source "VpnProfileInfo.java"


# instance fields
.field private volatile activateState:I

.field private volatile admin_id:I

.field private volatile chainingEnabled:I

.field private volatile credentialsPredefined:Z

.field private volatile mDefaultInterface:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mEnableIPv6:I

.field private volatile mInterfaceAddress:Ljava/lang/String;

.field private volatile mInterfaceName:Ljava/lang/String;

.field private volatile mInterfaceV6Address:Ljava/lang/String;

.field private volatile mIsRetry:Z

.field private volatile mNetId:I

.field private mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPacurl:Ljava/lang/String;

.field private volatile mProfileName:Ljava/lang/String;

.field private mProxyInfo:Landroid/net/ProxyInfo;

.field private volatile mProxyPassword:Ljava/lang/String;

.field private volatile mProxyPort:I

.field private volatile mProxyServer:Ljava/lang/String;

.field private volatile mProxyusername:Ljava/lang/String;

.field private mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mState:I

.field private volatile mVendorPkgName:Ljava/lang/String;

.field private volatile mVendorUid:I

.field private volatile markProfileForDeletion:Z

.field private volatile personaId:I

.field private volatile protocolType:Ljava/lang/String;

.field private volatile proxyAuthRequried:I

.field private volatile routeType:I

.field private volatile uidPidSearchEnabled:I

.field private volatile vpnConnectionType:I

.field private volatile vpnType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, mIsRetry:Z

    .line 84
    iput v2, p0, mVendorUid:I

    .line 86
    iput v2, p0, mNetId:I

    .line 88
    iput-object v0, p0, mProxyServer:Ljava/lang/String;

    .line 90
    iput v2, p0, mProxyPort:I

    .line 92
    iput-object v0, p0, mProxyInfo:Landroid/net/ProxyInfo;

    .line 94
    iput-object v0, p0, mProxyusername:Ljava/lang/String;

    .line 96
    iput-object v0, p0, mProxyPassword:Ljava/lang/String;

    .line 98
    iput-object v0, p0, mPacurl:Ljava/lang/String;

    .line 100
    iput v1, p0, mEnableIPv6:I

    .line 102
    iput-object v0, p0, mInterfaceAddress:Ljava/lang/String;

    .line 104
    iput-object v0, p0, mDefaultInterface:Ljava/lang/String;

    .line 106
    iput-object v0, p0, mInterfaceV6Address:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, credentialsPredefined:Z

    .line 112
    iput v1, p0, proxyAuthRequried:I

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public addPackageEntry(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 310
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 311
    .local v0, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    iget-object v1, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public getActivateState()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, activateState:I

    return v0
.end method

.method public getAdminId()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, admin_id:I

    return v0
.end method

.method public getChainingEnabled()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, chainingEnabled:I

    return v0
.end method

.method public getDefaultInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, mDefaultInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, mDnsList:Ljava/util/List;

    return-object v0
.end method

.method public getEnableIPv6()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, mEnableIPv6:I

    return v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, mInterfaceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRetry()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, mIsRetry:Z

    return v0
.end method

.method public getMarkProfileForDeletion()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, markProfileForDeletion:Z

    return v0
.end method

.method public getNetId()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, mNetId:I

    return v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    goto :goto_9
.end method

.method public getPackageCount()I
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 292
    iget-object v3, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 293
    .local v1, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 298
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public getPackageList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPacurl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, mPacurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, personaId:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Landroid/net/ProxyInfo;
    .registers 2

    .prologue
    .line 342
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, mProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, mProxyPort:I

    return v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, mProxyusername:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, routeType:I

    return v0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, mSearchDomainList:Ljava/util/List;

    return-object v0
.end method

.method public getUidPidSearchEnabled()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, uidPidSearchEnabled:I

    return v0
.end method

.method public getV6InterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, mInterfaceV6Address:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, mVendorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorUid()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, mVendorUid:I

    return v0
.end method

.method public getVpnConnectionType()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, vpnConnectionType:I

    return v0
.end method

.method public getVpnServiceType()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, vpnType:I

    return v0
.end method

.method public isProxyAuthRequired()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, proxyAuthRequried:I

    return v0
.end method

.method public isproxyCredentialsPreDefined()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, credentialsPredefined:Z

    return v0
.end method

.method public proxyCredentialsPreDefined(Z)V
    .registers 2
    .param p1, "predefined"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, credentialsPredefined:Z

    .line 406
    return-void
.end method

.method public removePackageEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 319
    :goto_8
    return-void

    .line 318
    :cond_9
    iget-object v0, p0, mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public setActivateState(I)V
    .registers 2
    .param p1, "activateState"    # I

    .prologue
    .line 203
    iput p1, p0, activateState:I

    .line 204
    return-void
.end method

.method public setAdminId(I)V
    .registers 2
    .param p1, "adminid"    # I

    .prologue
    .line 171
    iput p1, p0, admin_id:I

    .line 172
    return-void
.end method

.method public setChainingEnabled(I)V
    .registers 2
    .param p1, "chainingEnabled"    # I

    .prologue
    .line 215
    iput p1, p0, chainingEnabled:I

    .line 216
    return-void
.end method

.method public setDefaultInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultInterface"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, mDefaultInterface:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setDnsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mDnsList:Ljava/util/List;

    .line 253
    return-void
.end method

.method public setEnableIPv6(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 373
    iput p1, p0, mEnableIPv6:I

    .line 374
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, mInterfaceAddress:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, mInterfaceName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setIsRetry(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, mIsRetry:Z

    .line 124
    return-void
.end method

.method public setMarkProfileForDeletion(Z)V
    .registers 2
    .param p1, "markProfileForDeletion"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, markProfileForDeletion:Z

    .line 249
    return-void
.end method

.method public setNetId(I)V
    .registers 2
    .param p1, "netId"    # I

    .prologue
    .line 155
    iput p1, p0, mNetId:I

    .line 156
    return-void
.end method

.method public setPacAuthRequired(I)V
    .registers 2
    .param p1, "authRequired"    # I

    .prologue
    .line 413
    iput p1, p0, proxyAuthRequried:I

    .line 414
    return-void
.end method

.method public setPacurl(Ljava/lang/String;)V
    .registers 2
    .param p1, "pacUrl"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, mPacurl:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setPersonaId(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 179
    iput p1, p0, personaId:I

    .line 180
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, mProfileName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .registers 2
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, protocolType:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public declared-synchronized setProxyInfo(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "proxyinfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, mProxyPassword:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setProxyPort(I)V
    .registers 2
    .param p1, "proxyPort"    # I

    .prologue
    .line 330
    iput p1, p0, mProxyPort:I

    .line 331
    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .registers 2
    .param p1, "proxyServer"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, mProxyServer:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, mProxyusername:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setRouteType(I)V
    .registers 2
    .param p1, "routeType"    # I

    .prologue
    .line 187
    iput p1, p0, routeType:I

    .line 188
    return-void
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mSearchDomainList:Ljava/util/List;

    .line 261
    return-void
.end method

.method public setUidPidSearchEnabled(I)V
    .registers 2
    .param p1, "uidPidSearchEnabled"    # I

    .prologue
    .line 226
    iput p1, p0, uidPidSearchEnabled:I

    .line 227
    return-void
.end method

.method public setV6InterfaceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, mInterfaceV6Address:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setVendorPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "vendorPkgName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, mVendorPkgName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setVendorUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 235
    iput p1, p0, mVendorUid:I

    .line 236
    return-void
.end method

.method public setVpnConnectionType(I)V
    .registers 2
    .param p1, "vpnConnectionType"    # I

    .prologue
    .line 244
    iput p1, p0, vpnConnectionType:I

    .line 245
    return-void
.end method

.method public setVpnServiceType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 276
    iput p1, p0, vpnType:I

    .line 277
    return-void
.end method
