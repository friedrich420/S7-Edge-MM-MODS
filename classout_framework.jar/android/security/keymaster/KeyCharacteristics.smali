.class public Landroid/security/keymaster/KeyCharacteristics;
.super Ljava/lang/Object;
.source "KeyCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeyCharacteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hwEnforced:Landroid/security/keymaster/KeymasterArguments;

.field public swEnforced:Landroid/security/keymaster/KeymasterArguments;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(I)Z
    .registers 3
    .param p1, "tag"    # I

    .prologue
    .line 144
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v0

    .line 147
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v0

    goto :goto_e
.end method

.method public getDate(I)Ljava/util/Date;
    .registers 5
    .param p1, "tag"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v1, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/util/Date;
    if-eqz v0, :cond_a

    .line 135
    .end local v0    # "result":Ljava/util/Date;
    :goto_9
    return-object v0

    .restart local v0    # "result":Ljava/util/Date;
    :cond_a
    iget-object v1, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_9
.end method

.method public getEnum(I)Ljava/lang/Integer;
    .registers 4
    .param p1, "tag"    # I

    .prologue
    const/4 v1, -0x1

    .line 76
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    :goto_13
    return-object v0

    .line 78
    :cond_14
    iget-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 79
    iget-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    .line 81
    :cond_27
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getEnums(I)Ljava/util/List;
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v1, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-object v0
.end method

.method public getUnsignedInt(IJ)J
    .registers 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    .prologue
    .line 104
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide v0

    .line 107
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide v0

    goto :goto_e
.end method

.method public getUnsignedLongs(I)Ljava/util/List;
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    iget-object v1, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v1, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 66
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget-object v0, p0, swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    iget-object v0, p0, hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
