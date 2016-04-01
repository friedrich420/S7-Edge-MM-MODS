.class public Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "EDMProxyService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 770
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_b

    .line 775
    :goto_a
    return-void

    .line 773
    :cond_b
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 779
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 780
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_b

    .line 785
    :goto_a
    return-void

    .line 783
    :cond_b
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_a
.end method

.method public AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 789
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 790
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_b

    .line 795
    :goto_a
    return-void

    .line 793
    :cond_b
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivileged(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 799
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 800
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_b

    .line 805
    :goto_a
    return-void

    .line 803
    :cond_b
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivilegedAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_a
.end method

.method public addCallsCount(Ljava/lang/String;)V
    .registers 4
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 134
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_c

    .line 138
    :goto_b
    return-void

    .line 137
    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->addCallsCount(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 3

    .prologue
    .line 466
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 468
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 469
    const/4 v1, 0x0

    .line 471
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result v1

    goto :goto_c
.end method

.method public addNumberOfIncomingSms()Z
    .registers 3

    .prologue
    .line 494
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 496
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 497
    const/4 v1, 0x0

    .line 499
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result v1

    goto :goto_c
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 3

    .prologue
    .line 475
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 477
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 478
    const/4 v1, 0x0

    .line 480
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result v1

    goto :goto_c
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 3

    .prologue
    .line 503
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 505
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 506
    const/4 v1, 0x0

    .line 508
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result v1

    goto :goto_c
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 680
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_b

    .line 685
    :goto_a
    return-void

    .line 683
    :cond_b
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 440
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 441
    const/4 v1, 0x1

    .line 443
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 532
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 533
    const/4 v1, 0x1

    .line 535
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 449
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 450
    const/4 v1, 0x1

    .line 452
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 521
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 523
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 524
    const/4 v1, 0x1

    .line 526
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 3

    .prologue
    .line 512
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 514
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 515
    const/4 v1, 0x0

    .line 517
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result v1

    goto :goto_c
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 595
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 596
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_c

    .line 600
    :goto_b
    return-void

    .line 599
    :cond_c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getAddHomeShorcutRequested()Z
    .registers 3

    .prologue
    .line 214
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 216
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAddHomeShorcutRequested()Z

    move-result v1

    goto :goto_b
.end method

.method public getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1447
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_10

    .line 1448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1450
    :goto_f
    return-object v1

    :cond_10
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAliasesForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_f
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .registers 3
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
    .line 1471
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1473
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_10

    .line 1474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1476
    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v1

    goto :goto_f
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 232
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 234
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 235
    const/4 v1, 0x1

    .line 237
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_b
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 3

    .prologue
    .line 555
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 556
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 557
    const/4 v1, 0x1

    .line 559
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public getAllowUserProfiles(ZI)Z
    .registers 5
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 563
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 564
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 565
    const/4 v1, 0x1

    .line 567
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v1

    goto :goto_c
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;I)[B
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 204
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 206
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 207
    const/4 v1, 0x0

    .line 209
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDbAsUser(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_b
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1077
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1079
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 1080
    const/4 v1, 0x0

    .line 1082
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 648
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 650
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 651
    const/4 v1, 0x1

    .line 653
    :goto_b
    return v1

    :cond_c
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_b
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 658
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 660
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 661
    const/4 v1, 0x1

    .line 663
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    goto :goto_b
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 3

    .prologue
    .line 895
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 896
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 897
    const/4 v1, 0x1

    .line 899
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 4
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
    .line 547
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 548
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_12

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedNetworks(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_11
.end method

.method public getBrowserSettingStatus(I)Z
    .registers 5
    .param p1, "setting"    # I

    .prologue
    .line 322
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 324
    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_c

    .line 325
    const/4 v1, 0x1

    .line 327
    :goto_b
    return v1

    :cond_c
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_b
.end method

.method public getCertificateAliasesHavingPrivateKey()Ljava/util/List;
    .registers 4
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
    .line 1483
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1485
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_10

    .line 1486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1488
    :goto_f
    return-object v1

    :cond_10
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_f
.end method

.method public getCertificateChain(Ljava/lang/String;)[B
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1381
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 1382
    .local v1, "ucmService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    if-eqz v1, :cond_13

    .line 1383
    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    .line 1384
    .local v0, "ret":Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    if-eqz v0, :cond_13

    .line 1385
    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 1387
    .end local v0    # "ret":Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1392
    const-string/jumbo v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1394
    .local v0, "enterpriseLicenseService":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-nez v0, :cond_d

    .line 1395
    const/4 v1, 0x0

    .line 1397
    :goto_c
    return-object v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_c
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 5
    .param p1, "allAdmins"    # Z

    .prologue
    .line 456
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 458
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 459
    const/4 v1, 0x0

    .line 461
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public getKeyboardMode()I
    .registers 3

    .prologue
    .line 1306
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1308
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1309
    const/4 v1, 0x0

    .line 1311
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getKeyboardMode()I

    move-result v1

    goto :goto_c
.end method

.method public getMinimumRequiredSecurity()I
    .registers 3

    .prologue
    .line 579
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 580
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 581
    const/4 v1, 0x0

    .line 583
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    goto :goto_c
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .registers 4
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
    .line 539
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 540
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_12

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkSSIDList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_11
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 3

    .prologue
    .line 571
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 572
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 573
    const/4 v1, 0x1

    .line 575
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public getSealedHideNotificationMessages()I
    .registers 3

    .prologue
    .line 1152
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1154
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1155
    const/4 v1, 0x0

    .line 1157
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    goto :goto_c
.end method

.method public getSealedNotificationMessagesState()Z
    .registers 3

    .prologue
    .line 1141
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1143
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1144
    const/4 v1, 0x1

    .line 1146
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedNotificationMessagesState()Z

    move-result v1

    goto :goto_c
.end method

.method public getSealedState()Z
    .registers 3

    .prologue
    .line 1132
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1134
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1135
    const/4 v1, 0x0

    .line 1137
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v1

    goto :goto_c
.end method

.method public getSensorDisabled()I
    .registers 3

    .prologue
    .line 1196
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1198
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1199
    const/4 v1, 0x0

    .line 1201
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSensorDisabled()I

    move-result v1

    goto :goto_c
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1412
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1414
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_e

    .line 1415
    const-wide/16 v2, -0x1

    .line 1417
    :goto_d
    return-wide v2

    :cond_e
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_d
.end method

.method public getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 1432
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1434
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_e

    .line 1435
    const-wide/16 v2, -0x1

    .line 1437
    :goto_d
    return-wide v2

    :cond_e
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_d
.end method

.method public getToastEnabledState()Z
    .registers 3

    .prologue
    .line 1174
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1176
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1177
    const/4 v1, 0x1

    .line 1179
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastEnabledState()Z

    move-result v1

    goto :goto_c
.end method

.method public getToastGravity()I
    .registers 3

    .prologue
    .line 1273
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1275
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1276
    const/4 v1, 0x0

    .line 1278
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravity()I

    move-result v1

    goto :goto_c
.end method

.method public getToastGravityEnabledState()Z
    .registers 3

    .prologue
    .line 1262
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1264
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1265
    const/4 v1, 0x0

    .line 1267
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityEnabledState()Z

    move-result v1

    goto :goto_c
.end method

.method public getToastGravityXOffset()I
    .registers 3

    .prologue
    .line 1284
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1286
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1287
    const/4 v1, 0x0

    .line 1289
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityXOffset()I

    move-result v1

    goto :goto_c
.end method

.method public getToastGravityYOffset()I
    .registers 3

    .prologue
    .line 1295
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1297
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1298
    const/4 v1, 0x0

    .line 1300
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityYOffset()I

    move-result v1

    goto :goto_c
.end method

.method public getToastShowPackageNameState()Z
    .registers 3

    .prologue
    .line 1185
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1187
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1188
    const/4 v1, 0x0

    .line 1190
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastShowPackageNameState()Z

    move-result v1

    goto :goto_c
.end method

.method public getVolumeButtonRotationState()Z
    .registers 3

    .prologue
    .line 1218
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1220
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1221
    const/4 v1, 0x0

    .line 1223
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumeButtonRotationState()Z

    move-result v1

    goto :goto_c
.end method

.method public getVolumeControlStream()I
    .registers 3

    .prologue
    .line 1163
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1165
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1166
    const/4 v1, 0x0

    .line 1168
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumeControlStream()I

    move-result v1

    goto :goto_c
.end method

.method public getVolumePanelEnabledState()Z
    .registers 3

    .prologue
    .line 1207
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1209
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1210
    const/4 v1, 0x1

    .line 1212
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumePanelEnabledState()Z

    move-result v1

    goto :goto_c
.end method

.method public getWifiAutoSwitchDelay()I
    .registers 3

    .prologue
    .line 1251
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1253
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_e

    .line 1254
    const/16 v1, 0x14

    .line 1256
    :goto_d
    return v1

    :cond_e
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchDelay()I

    move-result v1

    goto :goto_d
.end method

.method public getWifiAutoSwitchState()Z
    .registers 3

    .prologue
    .line 1229
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1231
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1232
    const/4 v1, 0x0

    .line 1234
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchState()Z

    move-result v1

    goto :goto_c
.end method

.method public getWifiAutoSwitchThreshold()I
    .registers 3

    .prologue
    .line 1240
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1242
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_e

    .line 1243
    const/16 v1, -0xc8

    .line 1245
    :goto_d
    return v1

    :cond_e
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchThreshold()I

    move-result v1

    goto :goto_d
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1068
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_11

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getWifiSsidRestrictionList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    goto :goto_10
.end method

.method public getWifiState()Z
    .registers 3

    .prologue
    .line 1315
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1317
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_d

    .line 1318
    const/4 v1, 0x0

    .line 1320
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiState()Z

    move-result v1

    goto :goto_c
.end method

.method public isAccessControlMethodPassword()Z
    .registers 4

    .prologue
    .line 1458
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1460
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_d

    .line 1461
    const/4 v1, 0x0

    .line 1463
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 1047
    const-string/jumbo v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1049
    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_d

    .line 1050
    const/4 v1, 0x1

    .line 1052
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 1038
    const-string/jumbo v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1040
    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_d

    .line 1041
    const/4 v1, 0x1

    .line 1043
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isAndroidBeamAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 1029
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1031
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 1032
    const/4 v1, 0x1

    .line 1034
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorClass"    # Ljava/lang/String;
    .param p5, "errorReason"    # Ljava/lang/String;
    .param p6, "showMsg"    # Z

    .prologue
    .line 746
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 748
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 749
    const/4 v1, 0x0

    .line 751
    :goto_b
    return v1

    :cond_c
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isAudioRecordAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 874
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 876
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 877
    const/4 v1, 0x1

    .line 879
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 808
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 809
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_c

    .line 810
    const/4 v1, 0x0

    .line 812
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    goto :goto_b
.end method

.method public isBTSecureAccessAllowedAsUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1326
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1328
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_d

    .line 1329
    const/4 v1, 0x0

    .line 1331
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isBTSecureAccessAllowedAsUser(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_c
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .registers 3

    .prologue
    .line 943
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 945
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 946
    const/4 v1, 0x1

    .line 948
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isBackupAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 639
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 641
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 642
    const/4 v1, 0x1

    .line 644
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .registers 4

    .prologue
    .line 980
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 982
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 983
    const/4 v1, 0x0

    .line 985
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .registers 4

    .prologue
    .line 970
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 972
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 973
    const/4 v1, 0x0

    .line 975
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 277
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 279
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 282
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isBluetoothEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 313
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 315
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 318
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isBluetoothLogEnabled()Z
    .registers 3

    .prologue
    .line 669
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 671
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 672
    const/4 v1, 0x0

    .line 674
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_b
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 262
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 263
    const/4 v1, 0x1

    .line 265
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .registers 4

    .prologue
    .line 1402
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1404
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_d

    .line 1405
    const/4 v1, 0x0

    .line 1407
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1422
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1424
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_d

    .line 1425
    const/4 v1, 0x0

    .line 1427
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public isCaCertificateTrustedAsUser([BZI)Z
    .registers 16
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 836
    const-string v9, "certificate_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 838
    .local v3, "certPolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v3, :cond_c

    .line 839
    const/4 v8, 0x1

    .line 870
    :cond_b
    :goto_b
    return v8

    .line 841
    :cond_c
    const/4 v8, 0x1

    .line 842
    .local v8, "ret":Z
    const/4 v7, 0x0

    .line 843
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_12

    .line 844
    const/4 v8, 0x1

    goto :goto_b

    .line 847
    :cond_12
    :try_start_12
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_21
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_15} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_35

    move-result-object v7

    .line 859
    if-nez v7, :cond_54

    .line 860
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert one certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v8, 0x1

    goto :goto_b

    .line 848
    :catch_21
    move-exception v4

    .line 849
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v8, 0x1

    goto :goto_b

    .line 851
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2b
    move-exception v0

    .line 852
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v8, 0x1

    goto :goto_b

    .line 854
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_35
    move-exception v6

    .line 855
    .local v6, "ile":Ljava/lang/IllegalArgumentException;
    const-string v9, "EDMProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not a certificate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v8, 0x1

    goto :goto_b

    .line 865
    .end local v6    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_54
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 866
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 867
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZI)Z

    move-result v9

    and-int/2addr v8, v9

    .line 868
    if-nez v8, :cond_58

    const/4 v8, 0x0

    goto :goto_b
.end method

.method public isCallingCaptureEnabled()Z
    .registers 4

    .prologue
    .line 141
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 143
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_d

    .line 144
    const/4 v1, 0x0

    .line 146
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isCallingCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isCameraEnabled(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 380
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 382
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 383
    const/4 v1, 0x1

    .line 385
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isChangeRequested()I
    .registers 4

    .prologue
    .line 332
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 334
    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_d

    .line 335
    const/4 v1, 0x0

    .line 337
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    goto :goto_c
.end method

.method public isClipboardAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 408
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 410
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 411
    const/4 v1, 0x1

    .line 413
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isClipboardShareAllowed()Z
    .registers 4

    .prologue
    .line 961
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 963
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 964
    const/4 v1, 0x1

    .line 966
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 4
    .param p1, "message"    # I

    .prologue
    .line 1086
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1088
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 1089
    const/4 v1, 0x1

    .line 1091
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(I)Z

    move-result v1

    goto :goto_c
.end method

.method public isDateTimeChangeEnabled()Z
    .registers 4

    .prologue
    .line 603
    const-string/jumbo v1, "date_time_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 605
    .local v0, "dateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-nez v0, :cond_d

    .line 606
    const/4 v1, 0x1

    .line 608
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isDesktopConnectivityEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 251
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 253
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 256
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isDiscoverableEnabled()Z
    .registers 3

    .prologue
    .line 295
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 297
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 298
    const/4 v1, 0x1

    .line 300
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_b
.end method

.method public isGoogleCrashReportAllowed()Z
    .registers 4

    .prologue
    .line 621
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 623
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 624
    const/4 v1, 0x1

    .line 626
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .registers 6
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 688
    const-string/jumbo v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 689
    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_d

    .line 690
    const/4 v1, 0x1

    .line 692
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z

    move-result v1

    goto :goto_c
.end method

.method public isIncomingMmsAllowed()Z
    .registers 3

    .prologue
    .line 756
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 758
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 759
    const/4 v1, 0x1

    .line 761
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isIncomingSmsAllowed()Z
    .registers 4

    .prologue
    .line 716
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 718
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 719
    const/4 v1, 0x1

    .line 721
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 225
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_c

    .line 226
    const/4 v1, 0x0

    .line 228
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_b
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .registers 3

    .prologue
    .line 952
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 954
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 955
    const/4 v1, 0x1

    .line 957
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isKnoxBluetoothEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1359
    const-string/jumbo v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 1361
    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_d

    .line 1364
    :goto_c
    return v1

    :cond_d
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 4

    .prologue
    .line 484
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 486
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 487
    const/4 v1, 0x0

    .line 489
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isLimitedDiscoverableEnabled()Z
    .registers 3

    .prologue
    .line 304
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 306
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 307
    const/4 v1, 0x1

    .line 309
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_b
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v1, "location_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 197
    .local v0, "locationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-nez v0, :cond_d

    .line 198
    const/4 v1, 0x0

    .line 200
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public isMMSCaptureEnabled()Z
    .registers 4

    .prologue
    .line 177
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 179
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_d

    .line 180
    const/4 v1, 0x0

    .line 182
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 418
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 420
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 421
    const/4 v1, 0x1

    .line 423
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isNFCEnabled()Z
    .registers 3

    .prologue
    .line 390
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 392
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 393
    const/4 v1, 0x1

    .line 395
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v1

    goto :goto_c
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 399
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 401
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 402
    const/4 v1, 0x1

    .line 404
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isNFCStateChangeAllowed()Z
    .registers 3

    .prologue
    .line 1095
    const-string/jumbo v1, "misc_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 1097
    .local v0, "miscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-nez v0, :cond_d

    .line 1098
    const/4 v1, 0x1

    .line 1100
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v1

    goto :goto_c
.end method

.method public isNonMarketAppAllowed()Z
    .registers 4

    .prologue
    .line 370
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 372
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 373
    const/4 v1, 0x1

    .line 375
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isOcspCheckEnabled()Z
    .registers 4

    .prologue
    .line 913
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 915
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_c

    .line 916
    const/4 v1, 0x0

    .line 918
    :goto_b
    return v1

    :cond_c
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_b
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 242
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 244
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 247
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isOutgoingSmsAllowed()Z
    .registers 4

    .prologue
    .line 726
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 728
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 729
    const/4 v1, 0x1

    .line 731
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isPackageAllowedToAccessExternalSdcard(II)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1369
    const-string/jumbo v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 1371
    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_d

    .line 1374
    :goto_c
    return v1

    :cond_d
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isPackageAllowedToAccessExternalSdcard(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_c
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1336
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1338
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_d

    .line 1339
    const/4 v1, 0x1

    .line 1341
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isPackageWhitelistedFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(I)Z
    .registers 5
    .param p1, "calling_Uid"    # I

    .prologue
    .line 1346
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1348
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_d

    .line 1349
    const/4 v1, 0x1

    .line 1351
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isPackageWhitelistedFromBTSecureAccessUid(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_c
.end method

.method public isPairingEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 286
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 288
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 291
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result v1

    goto :goto_b
.end method

.method public isPowerOffAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 706
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 708
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 709
    const/4 v1, 0x1

    .line 711
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isProfileEnabled(I)Z
    .registers 5
    .param p1, "setting"    # I

    .prologue
    const/4 v1, 0x1

    .line 269
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 271
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_c

    .line 273
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    goto :goto_b
.end method

.method public isRevocationCheckEnabled()Z
    .registers 4

    .prologue
    .line 903
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 905
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_c

    .line 906
    const/4 v1, 0x0

    .line 908
    :goto_b
    return v1

    :cond_c
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_b
.end method

.method public isRoamingPushEnabled()Z
    .registers 3

    .prologue
    .line 342
    const-string/jumbo v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 344
    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_d

    .line 345
    const/4 v1, 0x1

    .line 347
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isRoamingSyncEnabled()Z
    .registers 3

    .prologue
    .line 351
    const-string/jumbo v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 353
    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_d

    .line 354
    const/4 v1, 0x1

    .line 356
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isSBeamAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 1020
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1022
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 1023
    const/4 v1, 0x1

    .line 1025
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isSMSCaptureEnabled()Z
    .registers 4

    .prologue
    .line 159
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 161
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_d

    .line 162
    const/4 v1, 0x0

    .line 164
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isSMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isSVoiceAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 1001
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1003
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 1004
    const/4 v1, 0x1

    .line 1006
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 428
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 430
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 431
    const/4 v1, 0x1

    .line 433
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 4

    .prologue
    .line 612
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 614
    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_d

    .line 615
    const/4 v1, 0x1

    .line 617
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 360
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 362
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 363
    const/4 v1, 0x1

    .line 365
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 1056
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1058
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 1059
    const/4 v1, 0x0

    .line 1061
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 697
    const-string/jumbo v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 698
    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_d

    .line 699
    const/4 v1, 0x1

    .line 701
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isTimaKeystoreEnabled()Z
    .registers 4

    .prologue
    .line 1495
    const-string/jumbo v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1497
    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_d

    .line 1498
    const/4 v1, 0x0

    .line 1500
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1504
    const-string/jumbo v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1506
    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_d

    .line 1507
    const/4 v1, 0x0

    .line 1509
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 736
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 738
    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_c

    .line 739
    const/4 v1, 0x0

    .line 741
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1104
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1106
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_c

    .line 1107
    const/4 v1, 0x1

    .line 1109
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v1

    goto :goto_b
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 884
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 886
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 887
    const/4 v1, 0x1

    .line 889
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isWapPushAllowed()Z
    .registers 3

    .prologue
    .line 1011
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1013
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_d

    .line 1014
    const/4 v1, 0x1

    .line 1016
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public isWifiDirectAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 934
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 936
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_d

    .line 937
    const/4 v1, 0x1

    .line 939
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_c
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 3

    .prologue
    .line 631
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 632
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 633
    const/4 v1, 0x1

    .line 635
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_c
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 816
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 818
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_b

    .line 823
    :goto_a
    return-void

    .line 821
    :cond_b
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 826
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 828
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_b

    .line 833
    :goto_a
    return-void

    .line 831
    :cond_b
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_a
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .registers 5
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 923
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 925
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_b

    .line 929
    :goto_a
    return-void

    .line 928
    :cond_b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    goto :goto_a
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1113
    const-string v3, "certificate_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1115
    .local v1, "certipolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_d

    .line 1116
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    .line 1119
    :cond_d
    const-string/jumbo v3, "knox_scep_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 1120
    .local v0, "cepPolicy":Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    if-eqz v0, :cond_1b

    .line 1121
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->notifyUserKeystoreUnlocked(I)V

    .line 1123
    :cond_1b
    const-string/jumbo v3, "knox_vpn_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1124
    .local v2, "knoxvpnPolicy":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    if-eqz v2, :cond_29

    .line 1125
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->notifyUserKeystoreUnlocked(I)V

    .line 1127
    :cond_29
    return-void
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 588
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_d

    .line 589
    const/4 v1, 0x0

    .line 591
    :goto_c
    return v1

    :cond_d
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfiguration(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 991
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 993
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_c

    .line 998
    :goto_b
    return-void

    :cond_c
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 996
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    goto :goto_b
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    .line 151
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 152
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_c

    .line 156
    :goto_b
    return-void

    :cond_c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/device/DeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 187
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 188
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_c

    .line 192
    :goto_b
    return-void

    .line 191
    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 169
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 170
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_c

    .line 174
    :goto_b
    return-void

    .line 173
    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b
.end method
