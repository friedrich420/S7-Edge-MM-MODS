.class Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RCPServiceInfo"
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "|"


# instance fields
.field public packageName:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V
    .registers 7
    .param p2, "packageNameAndServiceName"    # Ljava/lang/String;

    .prologue
    .line 2209
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2206
    const-string v1, "<NONE>"

    iput-object v1, p0, packageName:Ljava/lang/String;

    .line 2207
    const-string v1, "<NONE>"

    iput-object v1, p0, serviceName:Ljava/lang/String;

    .line 2210
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceInfo: packageNameAndServiceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_31

    .line 2226
    :cond_30
    :goto_30
    return-void

    .line 2215
    :cond_31
    const-string/jumbo v1, "|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2216
    .local v0, "index":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_43

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4d

    .line 2217
    :cond_43
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceInfo: index < 1 || (index+ 1) == packageNameAndServiceName.length()"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 2222
    :cond_4d
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, packageName:Ljava/lang/String;

    .line 2223
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, serviceName:Ljava/lang/String;

    goto :goto_30
.end method
