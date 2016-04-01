.class public Lcom/sec/epdg/mapcon/AppPolicy;
.super Ljava/lang/Object;
.source "AppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    }
.end annotation


# static fields
.field private static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final INTENT_HANDOVER_LTE_TO_WLAN:Ljava/lang/String; = "HANDOVER_LTE_TO_WLAN"

.field private static final INTENT_HANDOVER_WLAN_TO_LTE:Ljava/lang/String; = "HANDOVER_WLAN_TO_LTE"

.field private static final TAG:Ljava/lang/String; = "[AppPolicy]"

.field private static mAppPolicies:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/sec/epdg/mapcon/AppPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, mAppPolicies:Ljava/util/EnumMap;

    .line 32
    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, mAppPolicies:Ljava/util/EnumMap;

    .line 64
    return-void
.end method

.method private fillPendingIntentResult(Z)Landroid/content/Intent;
    .registers 5
    .param p1, "result"    # Z

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method private getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    .registers 3
    .param p1, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .prologue
    .line 114
    sget-object v0, mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    return-object v0
.end method

.method private getCallingPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 119
    .local v2, "pID":I
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 122
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, "runningProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    .local v3, "pInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_14

    .line 126
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 130
    .end local v3    # "pInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_26
    return-object v5

    .line 129
    :cond_27
    const-string v5, "[AppPolicy]"

    const-string v6, "Failed to get process name"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v5, 0x0

    goto :goto_26
.end method

.method protected static getInstance()Lcom/sec/epdg/mapcon/AppPolicy;
    .registers 1

    .prologue
    .line 67
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/sec/epdg/mapcon/AppPolicy;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    .line 70
    :cond_b
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    return-object v0
.end method

.method private sendX2XHandoverBroadcast(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Z)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p3, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p4, "result"    # Z

    .prologue
    .line 158
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v2, p3, :cond_47

    const-string v1, "HANDOVER_LTE_TO_WLAN"

    .line 160
    .local v1, "action":Ljava/lang/String;
    :goto_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "HOresult":Landroid/content/Intent;
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string/jumbo v2, "request"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v2, "apntype"

    invoke-virtual {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handover broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 158
    .end local v0    # "HOresult":Landroid/content/Intent;
    .end local v1    # "action":Ljava/lang/String;
    :cond_47
    const-string v1, "HANDOVER_WLAN_TO_LTE"

    goto :goto_6
.end method

.method private sendX2XHandoverResultIntent(Landroid/content/Context;Landroid/app/PendingIntent;Z)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "result"    # Z

    .prologue
    .line 143
    if-eqz p2, :cond_2c

    .line 144
    :try_start_2
    invoke-direct {p0, p3}, fillPendingIntentResult(Z)Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, "fillIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 146
    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handover intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 154
    .end local v1    # "fillIntent":Landroid/content/Intent;
    :cond_2c
    :goto_2c
    return-void

    .line 149
    :catch_2d
    move-exception v0

    .line 150
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send failed : intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_2c
.end method


# virtual methods
.method protected doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 4
    .param p1, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .prologue
    .line 96
    invoke-direct {p0, p1}, getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    move-result-object v0

    .line 97
    .local v0, "policy":Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPreferredRat()Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    goto :goto_7
.end method

.method protected notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p3, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p4, "result"    # Z
    .param p5, "broadcast"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p2}, getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    move-result-object v0

    .line 103
    .local v0, "policy":Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPreferredRat()Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    if-ne p3, v1, :cond_14

    .line 104
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, sendX2XHandoverResultIntent(Landroid/content/Context;Landroid/app/PendingIntent;Z)V

    .line 111
    :cond_13
    :goto_13
    return-void

    .line 107
    :cond_14
    const/4 v1, 0x1

    if-ne v1, p5, :cond_13

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, sendX2XHandoverBroadcast(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Z)V

    goto :goto_13
.end method

.method protected resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    .registers 3
    .param p1, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .prologue
    .line 92
    sget-object v0, mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p3, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 87
    sget-object v0, mAppPolicies:Ljava/util/EnumMap;

    new-instance v1, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    invoke-direct {p0, p1}, getCallingPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, p4}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;-><init>(Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 75
    new-instance v3, Ljava/lang/String;

    const-string v4, "APP POLICY\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "str":Ljava/lang/String;
    sget-object v4, mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 79
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    sget-object v4, mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    .line 80
    .local v2, "policy":Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    goto :goto_11

    .line 82
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v2    # "policy":Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    :cond_37
    return-object v3
.end method
