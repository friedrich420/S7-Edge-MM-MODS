.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3$1;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;->onModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateSelectedPackageName(Z)V

    .line 287
    return-void
.end method
