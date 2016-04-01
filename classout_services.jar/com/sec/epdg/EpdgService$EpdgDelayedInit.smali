.class Lcom/sec/epdg/EpdgService$EpdgDelayedInit;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgDelayedInit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .registers 2

    .prologue
    .line 2298
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p2, "x1"    # Lcom/sec/epdg/EpdgService$1;

    .prologue
    .line 2298
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2301
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$3700(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V

    .line 2302
    return-void
.end method
