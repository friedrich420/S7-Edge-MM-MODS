.class Landroid/security/keymaster/KeymasterIntArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterIntArgument.java"


# instance fields
.field public final value:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 29
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad int tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :sswitch_23
    iput p2, p0, value:I

    .line 39
    return-void

    .line 29
    :sswitch_data_26
    .sparse-switch
        0x10000000 -> :sswitch_23
        0x20000000 -> :sswitch_23
        0x30000000 -> :sswitch_23
        0x40000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, value:I

    .line 44
    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 48
    iget v0, p0, value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
