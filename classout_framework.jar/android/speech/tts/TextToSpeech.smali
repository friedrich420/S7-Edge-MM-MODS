.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final ERROR_INVALID_REQUEST:I = -0x8

.field public static final ERROR_NETWORK:I = -0x6

.field public static final ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final ERROR_OUTPUT:I = -0x5

.field public static final ERROR_SERVICE:I = -0x4

.field public static final ERROR_SYNTHESIS:I = -0x3

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field static final QUEUE_DESTROY:I = 0x2

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final STOPPED:I = -0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentEngine:Ljava/lang/String;

.field private final mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineName:Ljava/lang/String;

.field private final mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mParams:Landroid/os/Bundle;

.field private mRequestedEngine:Ljava/lang/String;

.field private mRestartParams:Landroid/os/Bundle;

.field private mRestartQueueMode:I

.field private mRestartText:Ljava/lang/CharSequence;

.field private mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private final mUseFallback:Z

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;

    .prologue
    .line 707
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "useFallback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mStartLock:Ljava/lang/Object;

    .line 674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mParams:Landroid/os/Bundle;

    .line 676
    iput-object v1, p0, mCurrentEngine:Ljava/lang/String;

    .line 677
    iput-object v1, p0, mEngineName:Ljava/lang/String;

    .line 718
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 719
    iput-object p2, p0, mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 720
    iput-object p3, p0, mRequestedEngine:Ljava/lang/String;

    .line 721
    iput-boolean p5, p0, mUseFallback:Z

    .line 723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mEarcons:Ljava/util/Map;

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUtterances:Ljava/util/Map;

    .line 725
    iput-object v1, p0, mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 727
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 728
    invoke-direct {p0}, initTts()I

    .line 729
    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    invoke-direct {p0}, getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mEngineName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .registers 4
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/speech/tts/TextToSpeech;I)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, dispatchOnInit(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 59
    iput-object p1, p0, mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 59
    iput-object p1, p0, mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/speech/tts/TextToSpeech;)I
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    invoke-direct {p0}, initTts()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, mCurrentEngine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    iput-object p1, p0, mRestartText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$502(Landroid/speech/tts/TextToSpeech;I)I
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, mRestartQueueMode:I

    return p1
.end method

.method static synthetic access$602(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iput-object p1, p0, mRestartParams:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mUtterances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-direct {p0, p1}, getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 59
    iget-object v0, p0, mEarcons:Ljava/util/Map;

    return-object v0
.end method

.method private connectToEngine(Ljava/lang/String;)Z
    .registers 9
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 802
    new-instance v1, Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V

    .line 803
    .local v1, "connection":Landroid/speech/tts/TextToSpeech$Connection;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.TTS_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, mEngineName:Ljava/lang/String;

    .line 806
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 807
    .local v0, "bound":Z
    if-nez v0, :cond_39

    .line 808
    const-string v3, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v3, 0x0

    .line 813
    :goto_38
    return v3

    .line 811
    :cond_39
    const-string v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sucessfully bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iput-object v1, p0, mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    goto :goto_38
.end method

.method private convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 1950
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_78

    .line 1951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1952
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "streamType"

    invoke-direct {p0, v0, p1, v4}, copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1953
    const-string/jumbo v4, "sessionId"

    invoke-direct {p0, v0, p1, v4}, copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1954
    const-string/jumbo v4, "utteranceId"

    invoke-direct {p0, v0, p1, v4}, copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1955
    const-string/jumbo v4, "volume"

    invoke-direct {p0, v0, p1, v4}, copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1956
    const-string/jumbo v4, "pan"

    invoke-direct {p0, v0, p1, v4}, copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1959
    const-string/jumbo v4, "networkTts"

    invoke-direct {p0, v0, p1, v4}, copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1960
    const-string v4, "embeddedTts"

    invoke-direct {p0, v0, p1, v4}, copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1961
    const-string/jumbo v4, "networkTimeoutMs"

    invoke-direct {p0, v0, p1, v4}, copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v4, "networkRetriesCount"

    invoke-direct {p0, v0, p1, v4}, copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1967
    iget-object v4, p0, mCurrentEngine:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 1968
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1969
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1970
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_52

    iget-object v4, p0, mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1971
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 1978
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_78
    const/4 v0, 0x0

    :cond_79
    return-object v0
.end method

.method private copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2076
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2077
    .local v1, "valueString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2079
    :try_start_c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2080
    .local v0, "value":F
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_14

    .line 2085
    .end local v0    # "value":F
    :cond_13
    :goto_13
    return-void

    .line 2081
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method private copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2064
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2065
    .local v1, "valueString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2067
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2068
    .local v0, "value":I
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_14

    .line 2073
    .end local v0    # "value":I
    :cond_13
    :goto_13
    return-void

    .line 2069
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method private copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2057
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2058
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2059
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_b
    return-void
.end method

.method private dispatchOnInit(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 818
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 819
    :try_start_3
    iget-object v0, p0, mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v0, :cond_f

    .line 820
    iget-object v0, p0, mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 823
    :cond_f
    monitor-exit v1

    .line 824
    return-void

    .line 823
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSpeechInputLength()I
    .registers 1

    .prologue
    .line 2401
    const/16 v0, 0xfa0

    return v0
.end method

.method private getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1982
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1983
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1984
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1986
    const-string/jumbo v1, "streamType"

    invoke-static {v0, v1}, verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1987
    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1988
    const-string/jumbo v1, "utteranceId"

    invoke-static {v0, v1}, verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1989
    const-string/jumbo v1, "volume"

    invoke-static {v0, v1}, verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1990
    const-string/jumbo v1, "pan"

    invoke-static {v0, v1}, verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1993
    const-string/jumbo v1, "networkTts"

    invoke-static {v0, v1}, verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1994
    const-string v1, "embeddedTts"

    invoke-static {v0, v1}, verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1995
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-static {v0, v1}, verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1996
    const-string/jumbo v1, "networkRetriesCount"

    invoke-static {v0, v1}, verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2000
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_47
    return-object v0

    :cond_48
    iget-object v0, p0, mParams:Landroid/os/Bundle;

    goto :goto_47
.end method

.method private getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .registers 10
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1769
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v2

    .line 1770
    .local v2, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v2, :cond_10

    .line 1771
    const-string v4, "TextToSpeech"

    const-string v5, "getVoices returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 1780
    :goto_f
    return-object v1

    .line 1774
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/Voice;

    .line 1775
    .local v1, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_f

    .line 1779
    .end local v1    # "voice":Landroid/speech/tts/Voice;
    :cond_2b
    const-string v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find voice "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in voice list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 1780
    goto :goto_f
.end method

.method private initTts()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 754
    iget-object v4, p0, mRequestedEngine:Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 755
    iget-object v4, p0, mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 756
    iget-object v4, p0, mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v4}, connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 757
    iget-object v3, p0, mRequestedEngine:Ljava/lang/String;

    iput-object v3, p0, mCurrentEngine:Ljava/lang/String;

    .line 798
    :goto_1d
    return v2

    .line 759
    :cond_1e
    iget-boolean v4, p0, mUseFallback:Z

    if-nez v4, :cond_4e

    .line 760
    iput-object v6, p0, mCurrentEngine:Ljava/lang/String;

    .line 761
    invoke-direct {p0, v3}, dispatchOnInit(I)V

    move v2, v3

    .line 762
    goto :goto_1d

    .line 764
    :cond_29
    iget-boolean v4, p0, mUseFallback:Z

    if-nez v4, :cond_4e

    .line 765
    const-string v2, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested engine not installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iput-object v6, p0, mCurrentEngine:Ljava/lang/String;

    .line 767
    invoke-direct {p0, v3}, dispatchOnInit(I)V

    move v2, v3

    .line 768
    goto :goto_1d

    .line 773
    :cond_4e
    invoke-virtual {p0}, getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "defaultEngine":Ljava/lang/String;
    if-eqz v0, :cond_65

    iget-object v4, p0, mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 775
    invoke-direct {p0, v0}, connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 776
    iput-object v0, p0, mCurrentEngine:Ljava/lang/String;

    goto :goto_1d

    .line 783
    :cond_65
    iget-object v4, p0, mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "highestRanked":Ljava/lang/String;
    if-eqz v1, :cond_84

    iget-object v4, p0, mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 786
    invoke-direct {p0, v1}, connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 787
    iput-object v1, p0, mCurrentEngine:Ljava/lang/String;

    goto :goto_1d

    .line 796
    :cond_84
    iput-object v6, p0, mCurrentEngine:Ljava/lang/String;

    .line 797
    invoke-direct {p0, v3}, dispatchOnInit(I)V

    move v2, v3

    .line 798
    goto :goto_1d
.end method

.method private makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .prologue
    .line 1057
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x1

    .line 737
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .registers 13
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v6

    .line 743
    :try_start_3
    iget-object v0, p0, mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-nez v0, :cond_21

    .line 744
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: not bound to TTS engine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v6

    .line 747
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :goto_20
    return-object p2

    .restart local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :cond_21
    iget-object v0, p0, mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    monitor-exit v6

    goto :goto_20

    .line 749
    :catchall_2e
    move-exception v0

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 11
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2030
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2031
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3f

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_3f

    .line 2033
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2034
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containst value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with invalid type. Should be a Boolean or String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const/4 v0, 0x0

    .line 2039
    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method private static verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2044
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2045
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_3f

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_3f

    .line 2047
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2048
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containst value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with invalid type. Should be a Float or a Double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v0, 0x0

    .line 2053
    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method private static verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2005
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2006
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_3f

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_3f

    .line 2008
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2009
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containst value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with invalid type. Should be an Integer or a Long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/4 v0, 0x0

    .line 2014
    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method private static verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2018
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2019
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_37

    .line 2020
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2021
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containst value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with invalid type. Should be a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v0, 0x0

    .line 2026
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .registers 6
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 1050
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_3
    iget-object v0, p0, mEarcons:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1053
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_3
    iget-object v0, p0, mEarcons:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1032
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .prologue
    .line 1003
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_3
    iget-object v0, p0, mEarcons:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1006
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 971
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_3
    iget-object v0, p0, mUtterances:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 974
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .prologue
    .line 928
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_3
    iget-object v0, p0, mUtterances:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 931
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 950
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_3
    iget-object v0, p0, mUtterances:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 953
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .prologue
    .line 894
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_3
    iget-object v0, p0, mUtterances:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 897
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public areDefaultsEnforced()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2154
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    new-instance v0, Landroid/speech/tts/TextToSpeech$14;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$14;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getAvailableLanguages"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentEngine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1487
    iget-object v0, p0, mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2144
    iget-object v0, p0, mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/util/Locale;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1504
    new-instance v0, Landroid/speech/tts/TextToSpeech$11;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$11;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getDefaultLanguage"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getDefaultVoice()Landroid/speech/tts/Voice;
    .registers 4

    .prologue
    .line 1789
    new-instance v0, Landroid/speech/tts/TextToSpeech$18;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$18;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getDefaultVoice"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2163
    iget-object v0, p0, mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1360
    new-instance v0, Landroid/speech/tts/TextToSpeech$8;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$8;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, 0x0

    const-string v2, "getFeatures"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1641
    new-instance v0, Landroid/speech/tts/TextToSpeech$13;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$13;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getLanguage"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getVoice()Landroid/speech/tts/Voice;
    .registers 4

    .prologue
    .line 1748
    new-instance v0, Landroid/speech/tts/TextToSpeech$17;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$17;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getVoice"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getVoices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    new-instance v0, Landroid/speech/tts/TextToSpeech$15;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$15;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getVoices"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 1843
    new-instance v0, Landroid/speech/tts/TextToSpeech$19;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$19;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isLanguageAvailable"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .registers 4

    .prologue
    .line 1241
    new-instance v0, Landroid/speech/tts/TextToSpeech$6;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$6;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPaused"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpeaking()Z
    .registers 4

    .prologue
    .line 1392
    new-instance v0, Landroid/speech/tts/TextToSpeech$9;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$9;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSpeaking"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public pause()I
    .registers 4

    .prologue
    .line 1212
    new-instance v0, Landroid/speech/tts/TextToSpeech$5;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$5;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pause"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 11
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1178
    new-instance v0, Landroid/speech/tts/TextToSpeech$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$3;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "playEarcon"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 6
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1278
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    if-nez p3, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, p1, p2, v1, v0}, playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 6
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1336
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p1, p2, p3, v0}, playSilentUtterance(JILjava/lang/String;)I

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public playSilentUtterance(JILjava/lang/String;)I
    .registers 12
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1300
    new-instance v0, Landroid/speech/tts/TextToSpeech$7;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$7;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "playSilentUtterance"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public restart()I
    .registers 5

    .prologue
    .line 1227
    const-string v0, "TextToSpeech"

    const-string/jumbo v1, "textToSpeech : restart() - method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0}, getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1229
    const/4 v0, -0x1

    .line 1232
    :goto_f
    return v0

    .line 1231
    :cond_10
    invoke-virtual {p0}, stop()I

    .line 1232
    iget-object v0, p0, mRestartText:Ljava/lang/CharSequence;

    iget v1, p0, mRestartQueueMode:I

    iget-object v2, p0, mRestartParams:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method public resume()I
    .registers 4

    .prologue
    .line 1197
    new-instance v0, Landroid/speech/tts/TextToSpeech$4;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$4;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "resume"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 1472
    if-eqz p1, :cond_12

    .line 1473
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1474
    :try_start_5
    iget-object v0, p0, mParams:Landroid/os/Bundle;

    const-string v2, "audioAttributes"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1476
    monitor-exit v1

    .line 1477
    const/4 v0, 0x0

    .line 1479
    :goto_e
    return v0

    .line 1476
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0

    .line 1479
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .registers 3
    .param p1, "enginePackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2133
    iput-object p1, p0, mRequestedEngine:Ljava/lang/String;

    .line 2134
    invoke-direct {p0}, initTts()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 1531
    new-instance v0, Landroid/speech/tts/TextToSpeech$12;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$12;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "setLanguage"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2099
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    iput-object v0, p0, mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2100
    const/4 v0, 0x0

    return v0
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 2114
    iput-object p1, p0, mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2115
    const/4 v0, 0x0

    return v0
.end method

.method public setPitch(F)I
    .registers 6
    .param p1, "pitch"    # F

    .prologue
    .line 1451
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1c

    .line 1452
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1453
    .local v0, "intPitch":I
    if-lez v0, :cond_1c

    .line 1454
    iget-object v2, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1455
    :try_start_e
    iget-object v1, p0, mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "pitch"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1456
    monitor-exit v2

    .line 1457
    const/4 v1, 0x0

    .line 1460
    .end local v0    # "intPitch":I
    :goto_18
    return v1

    .line 1456
    .restart local v0    # "intPitch":I
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1

    .line 1460
    .end local v0    # "intPitch":I
    :cond_1c
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public setSpeechRate(F)I
    .registers 6
    .param p1, "speechRate"    # F

    .prologue
    .line 1427
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1c

    .line 1428
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1429
    .local v0, "intRate":I
    if-lez v0, :cond_1c

    .line 1430
    iget-object v2, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1431
    :try_start_e
    iget-object v1, p0, mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "rate"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    monitor-exit v2

    .line 1433
    const/4 v1, 0x0

    .line 1436
    .end local v0    # "intRate":I
    :goto_18
    return v1

    .line 1432
    .restart local v0    # "intRate":I
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1

    .line 1436
    .end local v0    # "intRate":I
    :cond_1c
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public setVoice(Landroid/speech/tts/Voice;)I
    .registers 5
    .param p1, "voice"    # Landroid/speech/tts/Voice;

    .prologue
    .line 1704
    new-instance v0, Landroid/speech/tts/TextToSpeech$16;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$16;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "setVoice"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 837
    iget-object v1, p0, mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_4
    iget-object v0, p0, mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-eqz v0, :cond_14

    .line 839
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 841
    monitor-exit v1

    .line 864
    :goto_13
    return-void

    .line 843
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_22

    .line 846
    new-instance v0, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string/jumbo v1, "shutdown"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    goto :goto_13

    .line 843
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1094
    new-instance v0, Landroid/speech/tts/TextToSpeech$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "speak"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1149
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    if-nez p3, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, p1, p2, v1, v0}, speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method

.method public stop()I
    .registers 4

    .prologue
    .line 1407
    new-instance v0, Landroid/speech/tts/TextToSpeech$10;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$10;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stop"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1888
    new-instance v0, Landroid/speech/tts/TextToSpeech$20;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$20;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/io/File;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "synthesizeToFile"

    invoke-direct {p0, v0, v1, v2}, runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1945
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2, v0}, synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
