.class public Lcom/android/server/bridge/operations/SimplePersonaInfos;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    }
.end annotation


# static fields
.field public static final LAST_IMPORT_CALENDAR_STATUS:Ljava/lang/String; = "last_import_calendar_status"

.field public static final LAST_IMPORT_CONTACT_STATUS:Ljava/lang/String; = "last_import_contact_status"

.field static final MAX:I = 0x5

.field public static final PERSONA_ID:Ljava/lang/String; = "user_id"

.field public static final PERSONA_NAME:Ljava/lang/String; = "user_name"

.field public static final PERSONA_TYPE:Ljava/lang/String; = "type"

.field static final TAG:Ljava/lang/String; = "SimplePersonaInfos"

.field private static mCtx:Landroid/content/Context;

.field private static mPm:Landroid/os/PersonaManager;


# instance fields
.field isInitialized:Z

.field lock:Ljava/lang/Object;

.field mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, mCtx:Landroid/content/Context;

    .line 28
    sput-object v0, mPm:Landroid/os/PersonaManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, isInitialized:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, lock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mList:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mExtraInfo:Ljava/util/HashMap;

    .line 40
    sput-object p1, mCtx:Landroid/content/Context;

    .line 41
    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    sput-object v0, mPm:Landroid/os/PersonaManager;

    .line 42
    invoke-virtual {p0}, initialize()V

    .line 43
    return-void
.end method

.method private addItem(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, isExist(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 104
    :goto_6
    return-void

    .line 83
    :cond_7
    new-instance v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    invoke-direct {v1, p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;-><init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    .line 84
    .local v1, "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    iput p1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    .line 87
    iput-object p2, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    .line 88
    iput-object p3, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    .line 90
    const-string v2, "KNOX"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 91
    iget-object v2, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 96
    :goto_24
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v2, "user_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "last_import_contact_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "last_import_calendar_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 93
    :cond_52
    iget-object v2, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private isExist(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 108
    iget-object v1, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne v1, p1, :cond_17

    .line 109
    const/4 v1, 0x1

    .line 113
    :goto_16
    return v1

    .line 107
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public getExtraInfo(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "userid"    # I

    .prologue
    .line 135
    iget-object v0, p0, mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 139
    iget-boolean v0, p0, isInitialized:Z

    if-nez v0, :cond_7

    .line 140
    invoke-virtual {p0}, initialize()V

    .line 143
    :cond_7
    iget-object v1, p0, lock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_a
    iget-object v0, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    if-ltz p1, :cond_1e

    .line 145
    iget-object v0, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    monitor-exit v1

    .line 147
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1d

    .line 148
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getSimplePersonaInfo(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 3

    .prologue
    .line 152
    iget-boolean v0, p0, isInitialized:Z

    if-nez v0, :cond_7

    .line 153
    invoke-virtual {p0}, initialize()V

    .line 156
    :cond_7
    iget-object v1, p0, lock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_a
    iget-object v0, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 158
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0
.end method

.method public initialize()V
    .registers 10

    .prologue
    .line 46
    sget-object v5, mPm:Landroid/os/PersonaManager;

    if-nez v5, :cond_d

    .line 47
    const-string v5, "SimplePersonaInfos"

    const-string/jumbo v6, "initialize() failed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_c
    return-void

    .line 51
    :cond_d
    sget-object v5, mPm:Landroid/os/PersonaManager;

    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-nez v1, :cond_1e

    .line 53
    const-string v5, "SimplePersonaInfos"

    const-string/jumbo v6, "initialize() failed, personas is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 56
    :cond_1e
    iget-object v5, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 57
    iget-object v6, p0, lock:Ljava/lang/Object;

    monitor-enter v6

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    :try_start_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5a

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 61
    .local v2, "pi":Landroid/content/pm/PersonaInfo;
    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    if-nez v5, :cond_57

    .line 62
    sget-object v5, mCtx:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 64
    .local v4, "um":Landroid/os/UserManager;
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 65
    .local v3, "ui":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_57

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v5, :cond_57

    .line 66
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v8}, addItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 72
    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_5a
    const/4 v5, 0x1

    iput-boolean v5, p0, isInitialized:Z

    .line 73
    monitor-exit v6

    goto :goto_c

    :catchall_5f
    move-exception v5

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_5f

    throw v5
.end method

.method public removeItem(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 117
    iget-boolean v1, p0, isInitialized:Z

    if-nez v1, :cond_8

    .line 118
    invoke-virtual {p0}, initialize()V

    .line 132
    :goto_7
    return-void

    .line 122
    :cond_8
    iget-object v2, p0, lock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    :try_start_c
    iget-object v1, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 124
    iget-object v1, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne p1, v1, :cond_33

    .line 125
    iget-object v1, p0, mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_25
    iget-object v1, p0, mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v2

    goto :goto_7

    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v1

    .line 123
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
