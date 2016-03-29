.class Lcom/android/settings/notification/VolumeSeekBarPreference$4;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/settings/notification/VolumeSeekBarPreference;->setDualColorSeekbar()V
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    .line 285
    return-void
.end method
