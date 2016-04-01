.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_FEATURE_ID:Ljava/lang/String; = "cneFeatureId"

.field private static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "cneFeatureParameter"

.field private static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "cneParameterValue"

.field private static final FEATURE_ID:I = 0x1

.field private static final FEATURE_OFF:I = 0x1

.field private static final FEATURE_ON:I = 0x2

.field private static final FEATURE_PARAM:I = 0x1

.field private static final MAXIMUM_NETWORK_SCORE:I = 0x64

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everCaptivePortalDetected:Z

.field public everValidated:Z

.field private isCneWqeEnabled:Z

.field public knoxProfile:Z

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public lingering:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private mContext:Landroid/content/Context;

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkLingered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

.field public final networkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V
    .registers 22
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "net"    # Landroid/net/Network;
    .param p4, "info"    # Landroid/net/NetworkInfo;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "score"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "misc"    # Landroid/net/NetworkMisc;
    .param p11, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p12, "connService"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v5, 0x0

    iput-boolean v5, p0, isCneWqeEnabled:Z

    .line 178
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, networkRequests:Landroid/util/SparseArray;

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, networkLingered:Ljava/util/ArrayList;

    .line 194
    iput-object p1, p0, messenger:Landroid/os/Messenger;

    .line 195
    iput-object p2, p0, asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 196
    iput-object p3, p0, network:Landroid/net/Network;

    .line 197
    iput-object p4, p0, networkInfo:Landroid/net/NetworkInfo;

    .line 198
    iput-object p5, p0, linkProperties:Landroid/net/LinkProperties;

    .line 199
    iput-object p6, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 200
    move/from16 v0, p7

    iput v0, p0, currentScore:I

    .line 201
    move-object/from16 v0, p12

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/ConnectivityService;->createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;

    move-result-object v5

    iput-object v5, p0, networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    .line 202
    move-object/from16 v0, p10

    iput-object v0, p0, networkMisc:Landroid/net/NetworkMisc;

    .line 203
    const/4 v5, 0x0

    iput-boolean v5, p0, created:Z

    .line 204
    const/4 v5, 0x0

    iput-boolean v5, p0, everValidated:Z

    .line 205
    const/4 v5, 0x0

    iput-boolean v5, p0, lastValidated:Z

    .line 206
    move-object/from16 v0, p8

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 207
    const-string/jumbo v5, "persist.cne.feature"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 208
    .local v4, "val":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5f

    .line 209
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/connectivity/NetworkAgentInfo$1;

    invoke-direct {v6, p0}, Lcom/android/server/connectivity/NetworkAgentInfo$1;-><init>(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    :cond_5f
    iget-object v5, p0, networkMisc:Landroid/net/NetworkMisc;

    if-eqz v5, :cond_6a

    iget-object v5, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v5, v5, Landroid/net/NetworkMisc;->knoxProfile:Z

    :goto_67
    iput-boolean v5, p0, knoxProfile:Z

    .line 225
    return-void

    .line 224
    :cond_6a
    const/4 v5, 0x0

    goto :goto_67
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkAgentInfo;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, handlePrefChange(III)V

    return-void
.end method

.method private getCurrentScore(Z)I
    .registers 5
    .param p1, "pretendValidated"    # Z

    .prologue
    .line 266
    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez v1, :cond_e

    if-eqz p1, :cond_11

    .line 267
    :cond_e
    const/16 v0, 0x64

    .line 282
    :cond_10
    :goto_10
    return v0

    .line 270
    :cond_11
    iget v0, p0, currentScore:I

    .line 271
    .local v0, "score":I
    iget-boolean v1, p0, isCneWqeEnabled:Z

    if-nez v1, :cond_10

    .line 276
    iget-object v1, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_25

    if-nez p1, :cond_25

    .line 277
    add-int/lit8 v0, v0, -0x28

    .line 280
    :cond_25
    if-gez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private handlePrefChange(III)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "featureParam"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 328
    if-ne p1, v1, :cond_a

    if-ne p2, v1, :cond_a

    .line 329
    const/4 v0, 0x2

    if-ne p3, v0, :cond_b

    .line 330
    iput-boolean v1, p0, isCneWqeEnabled:Z

    .line 335
    :cond_a
    :goto_a
    return-void

    .line 331
    :cond_b
    if-ne p3, v1, :cond_a

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, isCneWqeEnabled:Z

    goto :goto_a
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .registers 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 234
    iget-object v0, p0, networkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_c

    const/4 v0, 0x0

    .line 236
    :goto_b
    return v0

    .line 235
    :cond_c
    iget-object v0, p0, networkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 4
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 324
    invoke-virtual {p1}, getCurrentScore()I

    move-result v0

    invoke-virtual {p0}, getCurrentScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    return v0
.end method

.method public getCurrentScore()I
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public isVPN()Z
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, network:Landroid/net/Network;

    if-nez v0, :cond_41

    const-string/jumbo v0, "null"

    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    iget-object v0, p0, network:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 241
    iget-boolean v0, p0, created:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 246
    iget-boolean v0, p0, created:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setCurrentScore(I)V
    .registers 2
    .param p1, "newScore"    # I

    .prologue
    .line 298
    iput p1, p0, currentScore:I

    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} lingering{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, lingering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "acceptUnvalidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "everCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, everCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lastCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, lastCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
