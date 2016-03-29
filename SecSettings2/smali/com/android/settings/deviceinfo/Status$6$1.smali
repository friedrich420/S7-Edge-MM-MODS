.class Lcom/android/settings/deviceinfo/Status$6$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status$6;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/Status$6;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status$6;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$6$1;->this$1:Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$6$1;->this$1:Lcom/android/settings/deviceinfo/Status$6;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateRegistrationStatus()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$1000(Lcom/android/settings/deviceinfo/Status;)V

    .line 877
    return-void
.end method
