.class Lcom/android/systemui/recents/misc/SystemServicesProxy$1;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;I)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput p2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    iget v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->val$taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 695
    return-void
.end method
