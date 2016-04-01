.class public Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
.super Ljava/lang/Object;
.source "DualScreenLaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreenLaunchParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_COUPLED_TASK:I = 0x1

.field public static final FLAG_COUPLED_TASK_CONTEXTUAL_MODE:I = 0x2

.field public static final FLAG_COUPLED_TASK_EXPAND_MODE:I = 0x1

.field public static final FLAG_COUPLED_TASK_LEAF_MODE:I = 0x4


# instance fields
.field private fromDisplayChooser:Z

.field private fromOppositeLaunchApp:Z

.field private mFlags:I

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, fromDisplayChooser:Z

    .line 41
    iput-boolean v1, p0, fromOppositeLaunchApp:Z

    .line 66
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 67
    iput v1, p0, mFlags:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, fromDisplayChooser:Z

    .line 41
    iput-boolean v0, p0, fromOppositeLaunchApp:Z

    .line 77
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 4
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, fromDisplayChooser:Z

    .line 41
    iput-boolean v0, p0, fromOppositeLaunchApp:Z

    .line 71
    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_13
    iput-object p1, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 73
    iput v0, p0, mFlags:I

    .line 74
    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 93
    iget v0, p0, mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, mFlags:I

    .line 94
    return-void
.end method

.method public clearFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 101
    iget v0, p0, mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mFlags:I

    .line 102
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public fromDisplayChooser()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, fromDisplayChooser:Z

    return v0
.end method

.method public fromOppositeLaunchApp()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, fromOppositeLaunchApp:Z

    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 150
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mFlags:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 152
    iput-boolean v1, p0, fromDisplayChooser:Z

    .line 154
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 155
    iput-boolean v1, p0, fromOppositeLaunchApp:Z

    .line 157
    :cond_27
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 97
    iput p1, p0, mFlags:I

    .line 98
    return-void
.end method

.method public setFromDisplayChooser(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, fromDisplayChooser:Z

    .line 106
    return-void
.end method

.method public setFromOppositeLaunchApp(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, fromOppositeLaunchApp:Z

    .line 114
    return-void
.end method

.method public setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 2
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 85
    iput-object p1, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "DualScreenLaunchParams { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v1, "mScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    if-eqz v0, :cond_22

    .line 128
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dualscreen/DualScreen;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_e
    iget v0, p0, mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, fromDisplayChooser:Z

    if-eqz v0, :cond_26

    .line 135
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_1a
    iget-boolean v0, p0, fromOppositeLaunchApp:Z

    if-eqz v0, :cond_2a

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_21
    return-void

    .line 131
    :cond_22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 137
    :cond_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 142
    :cond_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21
.end method
