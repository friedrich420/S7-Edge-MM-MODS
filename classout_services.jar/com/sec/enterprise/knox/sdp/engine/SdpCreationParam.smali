.class public Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
.super Ljava/lang/Object;
.source "SdpCreationParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mPrivilegedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, mFlags:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAlias:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mFlags:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, mPrivilegedApps:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, mFlags:I

    .line 23
    if-nez p1, :cond_a

    const-string p1, ""

    .end local p1    # "alias":Ljava/lang/String;
    :cond_a
    iput-object p1, p0, mAlias:Ljava/lang/String;

    .line 24
    invoke-direct {p0, p2}, validateFlags(I)I

    move-result v0

    iput v0, p0, mFlags:I

    .line 25
    invoke-direct {p0, p3}, validatePrivilegedApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mPrivilegedApps:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private validateFlags(I)I
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 109
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    .line 110
    :cond_5
    const/4 p1, 0x0

    .line 112
    .end local p1    # "flags":I
    :cond_6
    return p1
.end method

.method private validatePrivilegedApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-eqz p1, :cond_2f

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .line 119
    .local v0, "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 121
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 124
    .end local v0    # "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getPrivilegedApps()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, mPrivilegedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\nSdpCreationParam { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v3, p0, mPrivilegedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .line 69
    .local v0, "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 72
    .end local v0    # "element":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    :cond_4b
    const-string v3, "\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, mPrivilegedApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 88
    return-void
.end method
