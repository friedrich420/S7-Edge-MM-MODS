.class Lcom/android/systemui/volume/VolumeDialogController$C$11;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogController$C;->onStopSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$C$11;->this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController$C$11;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$C$11;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;->onStopSound()V

    .line 844
    return-void
.end method
