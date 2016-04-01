.class Lcom/android/server/DeviceManager3LMService$RulesEngine;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    }
.end annotation


# instance fields
.field private mRulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 3

    .prologue
    .line 2208
    iput-object p1, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, mRulesList:Ljava/util/ArrayList;

    .line 2208
    return-void
.end method


# virtual methods
.method public addPolicy(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2256
    .local p1, "regexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 2289
    move v1, p2

    .line 2290
    .local v1, "returnCode":Z
    const/4 v0, 0x0

    .line 2293
    .local v0, "longestRegexStrMatch":I
    const/4 v2, 0x1

    return v2
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 2212
    const/4 v0, 0x0

    return v0
.end method

.method public loadPolicy(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2273
    .local p1, "regexPermMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "permitted"    # Z

    .prologue
    .line 2226
    const/4 v0, 0x0

    return v0
.end method
