.class Lcom/android/systemui/statusbar/phone/StatusBarIconController$4;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;->showStatusBarCarrierLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeStatusBarCarrierLabel()V

    .line 729
    return-void
.end method
