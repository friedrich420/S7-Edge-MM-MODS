.class Landroid/security/keymaster/KeymasterBooleanArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterBooleanArgument.java"


# instance fields
.field public final value:Z


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "tag"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, value:Z

    .line 31
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad bool tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_26
    return-void

    .line 31
    nop

    :pswitch_data_28
    .packed-switch 0x70000000
        :pswitch_26
    .end packed-switch
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, value:Z

    .line 41
    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 46
    return-void
.end method
