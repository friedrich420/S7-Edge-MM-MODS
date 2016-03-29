.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$13;
.super Ljava/lang/Object;
.source "CenterBarWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->stopSelf()V

    .line 541
    return-void
.end method
