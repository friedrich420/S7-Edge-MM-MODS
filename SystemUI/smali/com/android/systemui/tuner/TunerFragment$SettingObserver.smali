.class final Lcom/android/systemui/tuner/TunerFragment$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TunerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$SettingObserver;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment$SettingObserver;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    # invokes: Lcom/android/systemui/tuner/TunerFragment;->updateBatteryPct()V
    invoke-static {v0}, Lcom/android/systemui/tuner/TunerFragment;->access$000(Lcom/android/systemui/tuner/TunerFragment;)V

    .line 189
    return-void
.end method
