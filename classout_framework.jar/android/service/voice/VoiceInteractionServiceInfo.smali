.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private mParseError:Ljava/lang/String;

.field private mRecognitionService:Ljava/lang/String;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSessionService:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSupportsAssist:Z

.field private mSupportsLaunchFromKeyguard:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 14
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p2, :cond_13

    .line 62
    const-string v7, "Service info is null "

    iput-object v7, p0, mParseError:Ljava/lang/String;

    .line 63
    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "VoiceInteractionServiceInfo init error si is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_12
    :goto_12
    return-void

    .line 66
    :cond_13
    const-string v7, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v8, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 67
    const-string v7, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v7, p0, mParseError:Ljava/lang/String;

    goto :goto_12

    .line 72
    :cond_22
    const/4 v4, 0x0

    .line 74
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_23
    const-string v7, "android.voice_interaction"

    invoke-virtual {p2, p1, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 75
    if-nez v4, :cond_48

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No android.voice_interaction meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mParseError:Ljava/lang/String;
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_42} :catch_c6
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_42} :catch_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_42} :catch_10e
    .catchall {:try_start_23 .. :try_end_42} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_12

    .line 81
    :cond_48
    :try_start_48
    iget-object v7, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 87
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_52
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_5a

    if-ne v6, v10, :cond_52

    .line 90
    :cond_5a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "voice-interaction-service"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 92
    const-string v7, "Meta-data does not start with voice-interaction-service tag"

    iput-object v7, p0, mParseError:Ljava/lang/String;
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_6b} :catch_c6
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6b} :catch_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_6b} :catch_10e
    .catchall {:try_start_48 .. :try_end_6b} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_12

    .line 96
    :cond_71
    :try_start_71
    sget-object v7, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v5, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mSessionService:Ljava/lang/String;

    .line 100
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mRecognitionService:Ljava/lang/String;

    .line 102
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mSettingsActivity:Ljava/lang/String;

    .line 104
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, mSupportsAssist:Z

    .line 107
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, mSupportsLaunchFromKeyguard:Z

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget-object v7, p0, mSessionService:Ljava/lang/String;

    if-nez v7, :cond_ae

    .line 112
    const-string v7, "No sessionService specified"

    iput-object v7, p0, mParseError:Ljava/lang/String;
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_a7} :catch_c6
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_a7} :catch_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_a7} :catch_10e
    .catchall {:try_start_71 .. :try_end_a7} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    .line 115
    :cond_ae
    :try_start_ae
    iget-object v7, p0, mRecognitionService:Ljava/lang/String;

    if-nez v7, :cond_bd

    .line 116
    const-string v7, "No recognitionService specified"

    iput-object v7, p0, mParseError:Ljava/lang/String;
    :try_end_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_b6} :catch_c6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_b6} :catch_10e
    .catchall {:try_start_ae .. :try_end_b6} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    :cond_bd
    if-eqz v4, :cond_c2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 134
    :cond_c2
    iput-object p2, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    goto/16 :goto_12

    .line 119
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "type":I
    :catch_c6
    move-exception v2

    .line 120
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mParseError:Ljava/lang/String;

    .line 121
    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_c7 .. :try_end_e3} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    .line 123
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_ea
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    :try_start_eb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mParseError:Ljava/lang/String;

    .line 125
    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_107
    .catchall {:try_start_eb .. :try_end_107} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :catch_10e
    move-exception v2

    .line 128
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_10f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, mParseError:Ljava/lang/String;

    .line 129
    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catchall {:try_start_10f .. :try_end_12b} :catchall_132

    .line 132
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_132
    move-exception v7

    if-eqz v4, :cond_138

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_138
    throw v7
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsAssist()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, mSupportsAssist:Z

    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, mSupportsLaunchFromKeyguard:Z

    return v0
.end method
