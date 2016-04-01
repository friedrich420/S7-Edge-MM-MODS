.class public Lcom/samsung/android/telephony/GsmAlphabetCode;
.super Ljava/lang/Object;
.source "GsmAlphabetCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B

.field private static final TAG:Ljava/lang/String; = "GsmAlphabetCode"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I

.field public static final UDH_SEPTET_COST_LENGTH:I

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I

.field public static mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/16 v0, 0x1b

    sput-byte v0, GSM_EXTENDED_ESCAPE:B

    .line 72
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x1

    sput v0, UDH_SEPTET_COST_LENGTH:I

    .line 79
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x4

    sput v0, UDH_SEPTET_COST_ONE_SHIFT_TABLE:I

    .line 86
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x7

    sput v0, UDH_SEPTET_COST_TWO_SHIFT_TABLES:I

    .line 93
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x6

    sput v0, UDH_SEPTET_COST_CONCATENATED_MESSAGE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/GsmAlphabet;)V
    .registers 2
    .param p1, "ga"    # Lcom/android/internal/telephony/GsmAlphabet;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sput-object p1, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    .line 57
    return-void
.end method

.method public static CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .prologue
    .line 581
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;

    return-object v0
.end method

.method public static charToGsm(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 116
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v0

    return v0
.end method

.method public static charToGsm(CZ)I
    .registers 4
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "GsmAlphabetCode"

    const-string v1, "GsmAlphabetCode: charToGsm"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v0

    return v0
.end method

.method public static charToGsmExtended(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 149
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v0

    return v0
.end method

.method public static convertEachCharacter(C)C
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 555
    const-string v0, "GsmAlphabetCode"

    const-string v1, "GsmAlphabetCode: convertEachCharacter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 423
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(C)I

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(CZ)I
    .registers 3
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 486
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;

    return-object v0
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    .line 462
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    return v0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .prologue
    .line 506
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .registers 2

    .prologue
    .line 532
    const-class v1, Lcom/samsung/android/telephony/GsmAlphabetCode;

    monitor-enter v1

    :try_start_3
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .registers 2

    .prologue
    .line 519
    const-class v1, Lcom/samsung/android/telephony/GsmAlphabetCode;

    monitor-enter v1

    :try_start_3
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .prologue
    .line 325
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 5
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I

    .prologue
    .line 551
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 7
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .prologue
    .line 348
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 367
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .prologue
    .line 383
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsmExtendedToChar(I)C
    .registers 2
    .param p0, "gsmChar"    # I

    .prologue
    .line 186
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v0

    return v0
.end method

.method public static gsmToChar(I)C
    .registers 2
    .param p0, "gsmChar"    # I

    .prologue
    .line 167
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v0

    return v0
.end method

.method public static isGsmSeptets(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 443
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    return v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 411
    sget-object v0, mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 412
    return-void
.end method
