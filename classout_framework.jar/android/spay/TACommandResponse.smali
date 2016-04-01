.class public Landroid/spay/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Landroid/spay/TACommandResponse$1;

    invoke-direct {v0}, Landroid/spay/TACommandResponse$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, mResponseCode:I

    .line 25
    iput-object v1, p0, mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, mResponse:[B

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 6
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, mResponseCode:I

    .line 25
    iput-object v1, p0, mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, mResponse:[B

    .line 42
    iput p1, p0, mResponseCode:I

    .line 43
    iput-object p2, p0, mErrorMsg:Ljava/lang/String;

    .line 44
    iput-object p3, p0, mResponse:[B

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, mResponseCode:I

    .line 25
    iput-object v1, p0, mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, mResponse:[B

    .line 61
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandResponse$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/spay/TACommandResponse$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 89
    const-string v7, "TACommandResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mResponse:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, p0, mResponse:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x64

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v3, "hex":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    iget-object v7, p0, mResponse:[B

    array-length v7, v7

    if-ge v4, v7, :cond_5c

    .line 93
    if-lez v4, :cond_43

    iget-object v7, p0, mResponse:[B

    aget-byte v7, v7, v4

    if-eqz v7, :cond_43

    iget-object v7, p0, mResponse:[B

    add-int/lit8 v8, v4, -0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_43

    .line 94
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_43
    const-string v7, "%02X "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, mResponse:[B

    aget-byte v9, v9, v4

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 98
    :cond_5c
    const-string v7, "TACommandResponse"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, "outFile":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 103
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_67
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/mnt/sdcard/respbuf.txt"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_96
    .catchall {:try_start_67 .. :try_end_6f} :catchall_af

    .line 104
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .local v6, "outFile":Ljava/io/FileWriter;
    :try_start_6f
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_cc
    .catchall {:try_start_6f .. :try_end_74} :catchall_c5

    .line 105
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_cf
    .catchall {:try_start_74 .. :try_end_7b} :catchall_c8

    .line 110
    if-eqz v1, :cond_80

    .line 111
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_80
    if-eqz v6, :cond_85

    .line 114
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_85} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_8f

    :cond_85
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 122
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    :cond_87
    :goto_87
    return-void

    .line 116
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_88
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 120
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_87

    .line 118
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_8f
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 121
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_87

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_97
    :try_start_97
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_af

    .line 110
    if-eqz v0, :cond_9f

    .line 111
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_9f
    if-eqz v5, :cond_87

    .line 114
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a4} :catch_aa

    goto :goto_87

    .line 116
    :catch_a5
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    :catch_aa
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_af
    move-exception v7

    .line 110
    :goto_b0
    if-eqz v0, :cond_b5

    .line 111
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_b5
    if-eqz v5, :cond_ba

    .line 114
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ba} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ba} :catch_c0

    .line 120
    :cond_ba
    :goto_ba
    throw v7

    .line 116
    :catch_bb
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ba

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ba

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catchall_c5
    move-exception v7

    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_b0

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catchall_c8
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_b0

    .line 106
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_cc
    move-exception v2

    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_97

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_cf
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/FileWriter;
    goto :goto_97
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mResponseCode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mErrorMsg:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, mResponse:[B

    .line 79
    iget-object v1, p0, mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 67
    iget v0, p0, mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    return-void
.end method
