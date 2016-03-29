.class Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;
.super Ljava/lang/Object;
.source "KnoxSettingProperty.java"


# static fields
.field private static KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;

.field private static KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mKnoxSealedMultiWindowFixedState:I

.field private static mKnoxSealedMultiWindowFixedStatePercentage:I

.field private static mKnoxSealedState:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKnoxSealedMultiWindowFixedStateObserver:Landroid/database/ContentObserver;

.field private mKnoxSealedStateObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z

    .line 21
    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I

    .line 22
    const/16 v0, 0x32

    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I

    .line 24
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;

    .line 25
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

    .line 27
    const-string v0, "MultiWindowTrayService"

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->addKnoxContentObserver()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 13
    sput-boolean p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 13
    sput p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 13
    sput p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I

    return p0
.end method

.method private addKnoxContentObserver()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 53
    sget-object v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v7, "getSealedState"

    const/4 v8, 0x0

    invoke-direct {p0, v4, v7, v8}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "knoxSealedState":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z

    .line 57
    new-array v3, v5, [Ljava/lang/String;

    .line 58
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string v4, "441"

    aput-object v4, v3, v6

    .line 59
    sget-object v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getSealedMultiWindowFixedState"

    invoke-direct {p0, v4, v5, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 61
    .local v0, "KnoxSealedMultiWindowFixedState":Ljava/lang/Integer;
    if-nez v0, :cond_1

    move v4, v6

    :goto_1
    sput v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I

    .line 63
    const-string v4, "442"

    aput-object v4, v3, v6

    .line 64
    sget-object v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getSealedMultiWindowFixedState"

    invoke-direct {p0, v4, v5, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 66
    .local v1, "knoxSealedMultiWindowFixedStatePercentage":Ljava/lang/Integer;
    if-nez v1, :cond_2

    const/16 v4, 0x32

    :goto_2
    sput v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I

    .line 68
    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedStateObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStateObserver:Landroid/database/ContentObserver;

    .line 107
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_1:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->KNOX_CUSTOM_MANAGER_SERVICE_URI_2:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    return-void

    .end local v0    # "KnoxSealedMultiWindowFixedState":Ljava/lang/Integer;
    .end local v1    # "knoxSealedMultiWindowFixedStatePercentage":Ljava/lang/Integer;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 55
    goto :goto_0

    .line 61
    .restart local v0    # "KnoxSealedMultiWindowFixedState":Ljava/lang/Integer;
    .restart local v3    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 66
    .restart local v1    # "knoxSealedMultiWindowFixedStatePercentage":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2
.end method

.method private getDBValue(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    .local v8, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 126
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    invoke-interface {v7, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getType(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 129
    .local v10, "returnType":I
    packed-switch v10, :pswitch_data_0

    .line 141
    .end local v8    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    :pswitch_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v6    # "columnIndex":I
    .end local v10    # "returnType":I
    :cond_0
    :goto_1
    return-object v8

    .line 131
    .restart local v6    # "columnIndex":I
    .restart local v8    # "result":Ljava/lang/Object;, "TT;"
    .restart local v10    # "returnType":I
    :pswitch_1
    :try_start_1
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 132
    .local v9, "resultValue":Ljava/lang/Integer;
    move-object v8, v9

    .line 133
    .local v8, "result":Ljava/lang/Integer;, "TT;"
    goto :goto_0

    .line 135
    .end local v9    # "resultValue":Ljava/lang/Integer;
    .local v8, "result":Ljava/lang/Object;, "TT;"
    :pswitch_2
    invoke-interface {v7, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "result":Ljava/lang/String;, "TT;"
    goto :goto_0

    .line 138
    .end local v6    # "columnIndex":I
    .end local v10    # "returnType":I
    .local v8, "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v11

    .line 139
    .local v11, "sqlException":Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v11}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11    # "sqlException":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected static getKnoxSealedMultiWindowFixedState(I)I
    .locals 1
    .param p0, "returnType"    # I

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 49
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 45
    :pswitch_0
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedState:I

    goto :goto_0

    .line 47
    :pswitch_1
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStatePercentage:I

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getSealedState()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedState:Z

    return v0
.end method

.method private removeKnoxContentObserver()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->mKnoxSealedMultiWindowFixedStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->removeKnoxContentObserver()V

    .line 36
    return-void
.end method
