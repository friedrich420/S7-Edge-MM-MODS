.class Lcom/android/settings/deviceinfo/StatusVZW$11$1;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StatusVZW$11;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/StatusVZW$11;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW$11;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$11$1;->this$1:Lcom/android/settings/deviceinfo/StatusVZW$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$11$1;->this$1:Lcom/android/settings/deviceinfo/StatusVZW$11;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->updateRegistrationStatus()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1900(Lcom/android/settings/deviceinfo/StatusVZW;)V

    .line 1570
    return-void
.end method
