.class public Landroid/sec/enterprise/auditlog/AuditLog;
.super Ljava/lang/Object;
.source "AuditLog.java"


# static fields
.field public static final ALERT:I = 0x1

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final CRITICAL:I = 0x2

.field public static final ERROR:I = 0x3

.field public static final NOTICE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AuditLog"

.field public static final WARNING:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuditLogEnabledAsUser(I)Z
    .registers 3
    .param p0, "userId"    # I

    .prologue
    .line 155
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 156
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 157
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isAuditLogEnabledAsUser(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 162
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 159
    :catch_b
    move-exception v1

    .line 162
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static log(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 68
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 69
    invoke-interface/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 75
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_f
    :goto_f
    return-void

    .line 72
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 113
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 114
    invoke-interface/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 120
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_10
    :goto_10
    return-void

    .line 117
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public static logMMS(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 88
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 89
    invoke-interface/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 95
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_f
    :goto_f
    return-void

    .line 92
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 128
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 129
    invoke-interface/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 135
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_f
    :goto_f
    return-void

    .line 132
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 143
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 144
    invoke-interface/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 150
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_10
    :goto_10
    return-void

    .line 147
    :catch_11
    move-exception v1

    goto :goto_10
.end method
