.class public final Lcom/android/systemui/volume/VolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# instance fields
.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:Ljava/lang/String;

.field public routedToBluetooth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .line 1087
    .local v0, "rt":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 1088
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 1089
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 1090
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 1091
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 1092
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    .line 1093
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 1094
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 1095
    return-object v0
.end method
