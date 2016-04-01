.class public Landroid/telephony/SubInfoRecord;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public dataRoaming:I

.field public displayName:Ljava/lang/String;

.field public displayNumberFormat:I

.field public iccId:Ljava/lang/String;

.field public mNwMode:I

.field public mStatus:I

.field public mcc:I

.field public mnc:I

.field public nameSource:I

.field public number:Ljava/lang/String;

.field public simIconRes:[I

.field public slotId:I

.field public subId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Landroid/telephony/SubInfoRecord$1;

    invoke-direct {v0}, Landroid/telephony/SubInfoRecord$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, subId:J

    .line 98
    const-string v0, ""

    iput-object v0, p0, iccId:Ljava/lang/String;

    .line 99
    iput v3, p0, slotId:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, displayName:Ljava/lang/String;

    .line 101
    iput v2, p0, nameSource:I

    .line 102
    iput v2, p0, color:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, number:Ljava/lang/String;

    .line 104
    iput v2, p0, displayNumberFormat:I

    .line 105
    iput v2, p0, dataRoaming:I

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, simIconRes:[I

    .line 107
    iput v2, p0, mcc:I

    .line 108
    iput v2, p0, mnc:I

    .line 109
    iput v2, p0, mStatus:I

    .line 110
    iput v3, p0, mNwMode:I

    .line 111
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIII)V
    .registers 15
    .param p1, "subId"    # J
    .param p3, "iccId"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "nameSource"    # I
    .param p7, "color"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "displayFormat"    # I
    .param p10, "roaming"    # I
    .param p11, "iconRes"    # [I
    .param p12, "mcc"    # I
    .param p13, "mnc"    # I
    .param p14, "status"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIIII)V
    .registers 19
    .param p1, "subId"    # J
    .param p3, "iccId"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "nameSource"    # I
    .param p7, "color"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "displayFormat"    # I
    .param p10, "roaming"    # I
    .param p11, "iconRes"    # [I
    .param p12, "mcc"    # I
    .param p13, "mnc"    # I
    .param p14, "status"    # I
    .param p15, "nwMode"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p1, p0, subId:J

    .line 126
    iput-object p3, p0, iccId:Ljava/lang/String;

    .line 127
    iput p4, p0, slotId:I

    .line 128
    iput-object p5, p0, displayName:Ljava/lang/String;

    .line 129
    iput p6, p0, nameSource:I

    .line 130
    iput p7, p0, color:I

    .line 131
    iput-object p8, p0, number:Ljava/lang/String;

    .line 132
    iput p9, p0, displayNumberFormat:I

    .line 133
    iput p10, p0, dataRoaming:I

    .line 134
    iput-object p11, p0, simIconRes:[I

    .line 135
    iput p12, p0, mcc:I

    .line 136
    move/from16 v0, p13

    iput v0, p0, mnc:I

    .line 137
    move/from16 v0, p14

    iput v0, p0, mStatus:I

    .line 138
    move/from16 v0, p15

    iput v0, p0, mNwMode:I

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    const-string v0, "None"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget-wide v0, p0, subId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-object v0, p0, iccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, slotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, nameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget v0, p0, displayNumberFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, dataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, simIconRes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 190
    iget v0, p0, mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, mNwMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
