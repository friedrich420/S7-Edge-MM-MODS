.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;,
        Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;,
        Landroid/sec/clipboard/ClipboardExManager$Format;
    }
.end annotation


# static fields
.field public static final DATE:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EMAIL:I = 0x4

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_INTENT_ID:I = 0x6

.field public static final FORMAT_MULTIPLE_TYPE_ID:I = 0x8

.field public static final FORMAT_MULTIPLE_URI_ID:I = 0x7

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final FORMAT_URI_ID:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ClipboardExManager"

.field public static final TIME:I = 0x2

.field public static final URL:I = 0x5

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

.field private mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mIsFiltered:Z

.field private mIsMaximumSize:Z

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mSetDataHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v3, p0, _UNFORMAT:I

    .line 84
    iput v2, p0, SUCCESS_SET_DATA:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, FAIL_SET_DATA:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, SUCCESS_AND_SAVE_BITMAP:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, PROTECTED_DATA_MAX:I

    .line 89
    iput-boolean v2, p0, mIsFiltered:Z

    .line 90
    iput v3, p0, mFormatid:I

    .line 91
    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 92
    iput-boolean v2, p0, mIsMaximumSize:Z

    .line 141
    iput-object v1, p0, mSetDataHandler:Landroid/os/Handler;

    .line 143
    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 144
    iput-object v1, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 146
    iput-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 147
    iput-object v1, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 149
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 151
    iput-object v1, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1466
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v3, p0, _UNFORMAT:I

    .line 84
    iput v2, p0, SUCCESS_SET_DATA:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, FAIL_SET_DATA:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, SUCCESS_AND_SAVE_BITMAP:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, PROTECTED_DATA_MAX:I

    .line 89
    iput-boolean v2, p0, mIsFiltered:Z

    .line 90
    iput v3, p0, mFormatid:I

    .line 91
    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 92
    iput-boolean v2, p0, mIsMaximumSize:Z

    .line 141
    iput-object v1, p0, mSetDataHandler:Landroid/os/Handler;

    .line 143
    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 144
    iput-object v1, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 146
    iput-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 147
    iput-object v1, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 149
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 151
    iput-object v1, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 190
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 193
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_49

    .line 194
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "no knox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_49
    return-void
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-object v0, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/clipboard/ClipboardExManager;)Z
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-boolean v0, p0, mIsMaximumSize:Z

    return v0
.end method

.method static synthetic access$302(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, mIsMaximumSize:Z

    return p1
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .registers 4
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, isClipboardAllowed(ZI)I

    move-result v0

    return v0
.end method

.method private add(Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
    .registers 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "withoutNoti"    # Z
    .param p3, "setPrimary"    # Z
    .param p4, "withoutSendingOrigin"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1385
    const/4 v2, 0x0

    .line 1387
    .local v2, "result":Z
    :try_start_3
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_34

    .line 1388
    const-string v5, "ClipboardExManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_34
    invoke-direct {p0, p1}, makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 1392
    const-string v3, "ClipboardExManager"

    const-string v5, "failed making file descriptor!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, sendResult(ZZ)V

    .line 1417
    :goto_45
    return v4

    .line 1397
    :cond_46
    if-eqz p1, :cond_9e

    .line 1398
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    .line 1399
    .local v1, "formatId":I
    if-eqz p4, :cond_7b

    .line 1400
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_79

    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    move v2, v3

    .line 1406
    :goto_63
    invoke-direct {p0, p2, v2}, sendResult(ZZ)V

    .line 1407
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 1408
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1409
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .end local v1    # "formatId":I
    :cond_77
    :goto_77
    move v4, v2

    .line 1417
    goto :goto_45

    .restart local v1    # "formatId":I
    :cond_79
    move v2, v4

    .line 1400
    goto :goto_63

    .line 1401
    :cond_7b
    if-eqz p3, :cond_95

    .line 1402
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_93

    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    move v2, v3

    :goto_92
    goto :goto_63

    :cond_93
    move v2, v4

    goto :goto_92

    .line 1404
    :cond_95
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    goto :goto_63

    .line 1412
    .end local v1    # "formatId":I
    :cond_9e
    const-string v3, "ClipboardExManager"

    const-string v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a5} :catch_a6

    goto :goto_77

    .line 1414
    :catch_a6
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77
.end method

.method private addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "withoutNoti"    # Z
    .param p4, "setPrimary"    # Z
    .param p5, "withoutSendingOrigin"    # Z

    .prologue
    const/high16 v7, 0x20000

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1202
    const-string v3, "addData"

    invoke-direct {p0, v3}, isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1281
    :cond_e
    :goto_e
    return v2

    .line 1206
    :cond_f
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1209
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_19

    if-nez p2, :cond_36

    .line 1210
    :cond_19
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 1211
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addData - Fail~ Service is null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1216
    :cond_36
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    if-ne v3, v6, :cond_69

    .line 1217
    invoke-virtual {p2, v6}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1218
    .local v0, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_66

    .line 1219
    iput-boolean v4, p0, mIsMaximumSize:Z

    .line 1234
    .end local v0    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :goto_56
    iget-object v2, p0, mSetDataHandler:Landroid/os/Handler;

    if-nez v2, :cond_61

    .line 1235
    new-instance v2, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v2, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v2, p0, mSetDataHandler:Landroid/os/Handler;

    .line 1281
    :cond_61
    invoke-direct {p0, p2, p3, p4, p5}, add(Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v2

    goto :goto_e

    .line 1221
    .restart local v0    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_66
    iput-boolean v2, p0, mIsMaximumSize:Z

    goto :goto_56

    .line 1223
    .end local v0    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_69
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    if-ne v3, v5, :cond_8d

    .line 1224
    invoke-virtual {p2, v5}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1225
    .local v1, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8a

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v3, v7, :cond_8a

    .line 1226
    iput-boolean v4, p0, mIsMaximumSize:Z

    goto :goto_56

    .line 1228
    :cond_8a
    iput-boolean v2, p0, mIsMaximumSize:Z

    goto :goto_56

    .line 1231
    .end local v1    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_8d
    iput-boolean v2, p0, mIsMaximumSize:Z

    goto :goto_56
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .registers 3

    .prologue
    .line 232
    sget-object v1, sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_7

    .line 233
    sget-object v1, sService:Landroid/sec/clipboard/IClipboardService;

    .line 242
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 235
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, sService:Landroid/sec/clipboard/IClipboardService;

    .line 237
    sget-object v1, sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_22

    .line 238
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 239
    const-string v1, "ClipboardExManager"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_22
    sget-object v1, sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_6
.end method

.method private getUserId()I
    .registers 5

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 223
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 224
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 225
    const/4 v1, 0x0

    .line 226
    const-string v2, "ClipboardExManager"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_16
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .registers 13
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 857
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 876
    :goto_9
    return v0

    .line 861
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 863
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 864
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_52

    .line 866
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 867
    const-string v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_4d

    move-result v0

    if-nez v0, :cond_48

    .line 871
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 876
    goto :goto_9

    .line 871
    :catchall_4d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_52
    move v0, v7

    .line 874
    goto :goto_9
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 1433
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1434
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v0, 0x0

    .line 1437
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v7, 0x0

    .line 1285
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 1286
    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v8

    packed-switch v8, :pswitch_data_15a

    .line 1381
    :cond_c
    :goto_c
    const/4 v7, 0x1

    :goto_d
    return v7

    :pswitch_e
    move-object v6, p1

    .line 1288
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1289
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1290
    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_81

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_81

    .line 1291
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 1293
    const/4 v5, 0x0

    .line 1295
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_2b
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1296
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_5f

    .line 1309
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_32
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 1310
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    .line 1312
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1314
    const/4 v5, 0x0

    .line 1316
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_52
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1317
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_c

    .line 1318
    :catch_5a
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1297
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 1298
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1302
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_64
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1306
    .end local v2    # "f":Ljava/io/File;
    :cond_81
    const-string v8, "ClipboardExManager"

    const-string/jumbo v9, "no bitmap file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 1323
    .restart local v1    # "extraPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_8a
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1328
    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_a8
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no extra bitmap file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_b2
    move-object v6, p1

    .line 1333
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1334
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1335
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_fc

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_fc

    .line 1336
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 1338
    const/4 v5, 0x0

    .line 1340
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_cf
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1341
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d6} :catch_d8

    goto/16 :goto_c

    .line 1342
    :catch_d8
    move-exception v0

    .line 1343
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 1347
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_de
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1351
    .end local v2    # "f":Ljava/io/File;
    :cond_fc
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no first image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_106
    move-object v6, p1

    .line 1356
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1357
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1358
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_150

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_150

    .line 1359
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1360
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_132

    .line 1361
    const/4 v5, 0x0

    .line 1363
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_123
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1364
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_12a} :catch_12c

    goto/16 :goto_c

    .line 1365
    :catch_12c
    move-exception v0

    .line 1366
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 1370
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_132
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1374
    .end local v2    # "f":Ljava/io/File;
    :cond_150
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no preview image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1286
    :pswitch_data_15a
    .packed-switch 0x3
        :pswitch_e
        :pswitch_b2
        :pswitch_106
    .end packed-switch
.end method

.method private sendResult(ZZ)V
    .registers 5
    .param p1, "withoutNoti"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1421
    if-nez p1, :cond_12

    .line 1422
    iget-object v1, p0, mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1423
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_13

    .line 1424
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1428
    :goto_d
    iget-object v1, p0, mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1430
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    return-void

    .line 1426
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_13
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_d
.end method

.method private startClipboardUIServiceService()V
    .registers 6

    .prologue
    .line 835
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 836
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 840
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 844
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_18
    return-void

    .line 841
    :catch_19
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private startKeepUIServiceService()V
    .registers 3

    .prologue
    .line 849
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "startKeepUIServiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 692
    const-string v2, "AddClipboardFormatListener"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 708
    :cond_9
    :goto_9
    return v0

    .line 697
    :cond_a
    :try_start_a
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_22

    .line 698
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 699
    const-string v2, "ClipboardExManager"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_9

    .line 704
    :catch_1c
    move-exception v1

    .line 705
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_9

    .line 703
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    :try_start_22
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_1c

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_9
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .registers 6
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 746
    const-string v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 747
    const/4 v0, 0x0

    .line 771
    :cond_9
    :goto_9
    return v0

    .line 749
    :cond_a
    const/4 v0, 0x0

    .line 751
    .local v0, "Result":Z
    iget-object v2, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_13

    iget-object v2, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_15

    .line 752
    :cond_13
    iput-object p1, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 755
    :cond_15
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_27

    .line 756
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 757
    const-string v2, "ClipboardExManager"

    const-string v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 763
    :cond_27
    :try_start_27
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 764
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3b

    .line 765
    const-string v2, "ClipboardExManager"

    const-string v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3b} :catch_3d

    .line 767
    :cond_3b
    const/4 v0, 0x1

    goto :goto_9

    .line 768
    :catch_3d
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .registers 3
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 1475
    const/4 v0, 0x0

    return v0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 719
    const-string v2, "RemoveClipboardFormatListener"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 736
    :cond_9
    :goto_9
    return v0

    .line 724
    :cond_a
    :try_start_a
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_22

    .line 725
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 726
    const-string v2, "ClipboardExManager"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_9

    .line 732
    :catch_1c
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 734
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_9

    .line 731
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    :try_start_22
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_1c

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_9
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 5
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 374
    const-string v1, "callPasteApplication"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 396
    :cond_8
    :goto_8
    return-void

    .line 378
    :cond_9
    iget-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_32

    .line 380
    :try_start_d
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_24

    .line 381
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 382
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 388
    :catch_1f
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    :try_start_24
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    .line 387
    iget-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_1f

    goto :goto_8

    .line 392
    :cond_32
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 393
    const-string v1, "ClipboardExManager"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public callPasteMenuFromApp(I)V
    .registers 5
    .param p1, "enabled"    # I

    .prologue
    .line 331
    const-string v1, "callPasteMenuFromApp"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 345
    :cond_8
    :goto_8
    return-void

    .line 335
    :cond_9
    :try_start_9
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_20

    .line 336
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 337
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 342
    :catch_1b
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    :try_start_20
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_1b

    goto :goto_8
.end method

.method public clearClipboardFormat()V
    .registers 3

    .prologue
    .line 968
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 978
    :cond_9
    :goto_9
    return-void

    .line 972
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFiltered:Z

    .line 973
    const/4 v0, -0x1

    iput v0, p0, mFormatid:I

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 975
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 976
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public clearFilter()V
    .registers 3

    .prologue
    .line 986
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 994
    :goto_9
    return-void

    .line 990
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFiltered:Z

    .line 991
    const/4 v0, -0x1

    iput v0, p0, mFormatid:I

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 993
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public dismissDialog()V
    .registers 4

    .prologue
    .line 1187
    :try_start_0
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_12

    .line 1188
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 1189
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_11
    :goto_11
    return-void

    .line 1194
    :cond_12
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V

    .line 1195
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_11

    .line 1196
    :catch_21
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public dismissUIDataDialog()V
    .registers 1

    .prologue
    .line 1179
    invoke-virtual {p0}, dismissDialog()V

    .line 1180
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .registers 9
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 778
    const-string v4, "getClipedStrings"

    invoke-direct {p0, v4}, isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object v1, v3

    .line 793
    :goto_a
    return-object v1

    .line 781
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v1, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_10
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_23

    .line 784
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_21

    .line 785
    const-string v4, "ClipboardExManager"

    const-string v5, "getClipedStrings - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object v1, v3

    .line 787
    goto :goto_a

    .line 789
    :cond_23
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/clipboard/IClipboardService;->getClipedStrings(II)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 790
    :catch_30
    move-exception v2

    .line 791
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public getContainerID()I
    .registers 2

    .prologue
    .line 1470
    const/4 v0, 0x0

    return v0
.end method

.method public getData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 8
    .param p1, "formatid"    # I

    .prologue
    .line 534
    const-string v3, "getData"

    invoke-direct {p0, v3}, isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 535
    const/4 v0, 0x0

    .line 557
    :cond_9
    :goto_9
    return-object v0

    .line 537
    :cond_a
    const/4 v0, 0x0

    .line 539
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_b
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_22

    .line 540
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 541
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 554
    :catch_1d
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    :try_start_22
    iget v3, p0, mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_75

    iget v2, p0, mFormatid:I

    .line 547
    .local v2, "myFormat":I
    :goto_29
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 549
    if-nez v0, :cond_9

    .line 550
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    .line 551
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10407f5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_74} :catch_1d

    goto :goto_9

    .end local v2    # "myFormat":I
    :cond_75
    move v2, p1

    .line 546
    goto :goto_29
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 522
    invoke-virtual {p0, p2}, getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v3, "getData"

    invoke-direct {p0, v3}, isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move v0, v2

    .line 679
    :goto_a
    return v0

    .line 655
    :cond_b
    const/4 v0, 0x1

    .line 657
    .local v0, "Result":Z
    invoke-direct {p0}, startClipboardUIServiceService()V

    .line 658
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call getData.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :try_start_27
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 662
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_38

    .line 663
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move v0, v2

    .line 665
    goto :goto_a

    .line 668
    :cond_3a
    iget-object v2, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_6e

    .line 669
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 670
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_67} :catch_68

    goto :goto_a

    .line 675
    :catch_68
    move-exception v1

    .line 676
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 677
    const/4 v0, 0x0

    goto :goto_a

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6e
    :try_start_6e
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, mFormatid:I

    iget-object v4, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 673
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9f} :catch_68

    goto/16 :goto_a
.end method

.method public getDataListSize()I
    .registers 5

    .prologue
    .line 619
    const-string v2, "getDataListSize"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 620
    const/4 v1, 0x0

    .line 635
    :cond_9
    :goto_9
    return v1

    .line 623
    :cond_a
    const/4 v1, -0x1

    .line 625
    .local v1, "size":I
    :try_start_b
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_22

    .line 626
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 627
    const-string v2, "ClipboardExManager"

    const-string v3, "getDataListSize - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 632
    :catch_1d
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    :try_start_22
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_1d

    move-result v1

    goto :goto_9
.end method

.method public getFrozenState()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 317
    const-string v1, "getFrozenState"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 323
    :cond_9
    :goto_9
    return v0

    .line 320
    :cond_a
    iget-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_9

    .line 323
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public getPersonaId()I
    .registers 4

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_2a

    .line 204
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_24

    .line 205
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_1a

    .line 206
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 208
    :cond_1a
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v1, :cond_25

    .line 209
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 217
    :cond_24
    :goto_24
    return v0

    .line 211
    :cond_25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_24

    .line 215
    :cond_2a
    invoke-direct {p0}, getUserId()I

    move-result v0

    goto :goto_24
.end method

.method public getPreviewIconXpos()F
    .registers 3

    .prologue
    .line 800
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconXpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewIconYpos()F
    .registers 3

    .prologue
    .line 808
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconYpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public getScrapDataSize()I
    .registers 3

    .prologue
    .line 642
    const-string v0, "ClipboardExManager"

    const-string v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public hasAppClipboardListener()Z
    .registers 2

    .prologue
    .line 1002
    invoke-virtual {p0}, isFiltered()Z

    move-result v0

    return v0
.end method

.method public hasData(I)Z
    .registers 8
    .param p1, "formatid"    # I

    .prologue
    .line 568
    const-string v3, "hasData"

    invoke-direct {p0, v3}, isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 569
    const/4 v0, 0x0

    .line 593
    :cond_9
    :goto_9
    return v0

    .line 572
    :cond_a
    const/4 v0, 0x0

    .line 574
    .local v0, "Result":Z
    :try_start_b
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_22

    .line 575
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 576
    const-string v3, "ClipboardExManager"

    const-string v4, "hasData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 590
    :catch_1d
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    :try_start_22
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v3

    if-lez v3, :cond_71

    .line 582
    iget v3, p0, mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6f

    iget v2, p0, mFormatid:I

    .line 583
    .local v2, "myFormat":I
    :goto_33
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6a} :catch_1d

    move-result-object v3

    if-eqz v3, :cond_9

    .line 585
    const/4 v0, 0x1

    goto :goto_9

    .end local v2    # "myFormat":I
    :cond_6f
    move v2, p1

    .line 582
    goto :goto_33

    .line 588
    :cond_71
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasData(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 602
    invoke-virtual {p0, p2}, hasData(I)Z

    move-result v0

    return v0
.end method

.method public hasDataOf(I)Z
    .registers 3
    .param p1, "formatid"    # I

    .prologue
    .line 611
    invoke-virtual {p0, p1}, hasData(I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .registers 3

    .prologue
    .line 823
    const-string v0, "ClipboardExManager"

    const-string v1, "hideUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method

.method public isEnabled()Z
    .registers 6

    .prologue
    .line 1445
    const/4 v2, 0x0

    .line 1448
    .local v2, "isEnabled":Z
    :try_start_1
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1449
    sget-object v3, sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v2

    .line 1459
    :goto_d
    return v2

    .line 1451
    :cond_e
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "sService is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1c

    goto :goto_d

    .line 1453
    :catch_17
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d

    .line 1455
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1c
    move-exception v1

    .line 1456
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public isFiltered()Z
    .registers 2

    .prologue
    .line 1011
    const-string v0, "isFiltered"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1012
    const/4 v0, 0x0

    .line 1014
    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, mIsFiltered:Z

    goto :goto_9
.end method

.method public isShowing()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 404
    const-string v2, "isShowing"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 417
    :cond_9
    :goto_9
    return v1

    .line 408
    :cond_a
    :try_start_a
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_21

    .line 409
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 410
    const-string v2, "ClipboardExManager"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_9

    .line 415
    :catch_1c
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :try_start_21
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_1c

    move-result v1

    goto :goto_9
.end method

.method public iscalledPasteMenuFromApp()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 351
    const-string v2, "iscalledPasteMenuFromApp"

    invoke-direct {p0, v2}, isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 365
    :cond_9
    :goto_9
    return v1

    .line 356
    :cond_a
    :try_start_a
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_21

    .line 357
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 358
    const-string v2, "ClipboardExManager"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_9

    .line 363
    :catch_1c
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :try_start_21
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->iscalledPasteMenuFromApp()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_1c

    move-result v1

    goto :goto_9
.end method

.method public requestPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 6
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1022
    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1046
    :cond_9
    :goto_9
    return-void

    .line 1025
    :cond_a
    const-string v2, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPaste : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    :goto_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {p0}, isFiltered()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1029
    :try_start_2f
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_49

    .line 1030
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1031
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_41} :catch_42

    goto :goto_9

    .line 1040
    :catch_42
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1025
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_47
    const/4 v1, -0x1

    goto :goto_1e

    .line 1035
    :cond_49
    :try_start_49
    iget v1, p0, mFormatid:I

    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/ClipboardData;->IsAlternateformatAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1036
    iget-object v1, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_9

    .line 1038
    :cond_57
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert format type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mFormatid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7f} :catch_42

    goto :goto_9

    .line 1044
    :cond_80
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .registers 5
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 830
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "sendCropRect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void
.end method

.method public setClipboardFormat(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .registers 6
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 886
    const-string/jumbo v0, "setClipboardFormat"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 901
    :cond_9
    :goto_9
    return-void

    .line 890
    :cond_a
    iget v0, p0, mFormatid:I

    if-eq v0, p1, :cond_11

    .line 891
    invoke-virtual {p0, p1, p2}, updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 894
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFiltered:Z

    .line 895
    iput p1, p0, mFormatid:I

    .line 896
    iput-object p2, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 898
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 899
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClipboardFormat - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 491
    const/4 v2, 0x0

    .line 494
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v0

    iput-object v0, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 495
    iget-object v0, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v0, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 497
    if-nez v2, :cond_11

    .line 500
    :goto_10
    return v5

    :cond_11
    if-eqz p3, :cond_1c

    move v3, v5

    :goto_14
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v5

    goto :goto_10

    :cond_1c
    const/4 v3, 0x1

    goto :goto_14
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 468
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    .line 477
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 513
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .registers 6
    .param p1, "filter"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 911
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 925
    :goto_9
    return-void

    .line 915
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFiltered:Z

    .line 916
    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    .line 917
    const/4 p1, 0x1

    .line 918
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_19
    invoke-virtual {p0, p1, p2}, updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 921
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFiltered:Z

    .line 923
    iput p1, p0, mFormatid:I

    .line 924
    iput-object p2, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    goto :goto_9
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 280
    const-string/jumbo v0, "setPasteFrozen"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 293
    :cond_9
    :goto_9
    return-void

    .line 284
    :cond_a
    iget v0, p0, mFormatid:I

    if-eq v0, p1, :cond_11

    .line 285
    invoke-virtual {p0, p1, p2}, updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 288
    :cond_11
    iput p1, p0, mFormatid:I

    .line 289
    iput-object p2, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 290
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 291
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setThawPaste()V
    .registers 3

    .prologue
    .line 301
    const-string/jumbo v0, "setThawPaste"

    invoke-direct {p0, v0}, isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 309
    :cond_9
    :goto_9
    return-void

    .line 304
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, mFormatid:I

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 306
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 307
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public showClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .registers 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1096
    invoke-virtual {p0, p1, p2}, showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .registers 4

    .prologue
    .line 1155
    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1170
    :cond_9
    :goto_9
    return-void

    .line 1158
    :cond_a
    invoke-direct {p0}, startClipboardUIServiceService()V

    .line 1160
    :try_start_d
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1161
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1162
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_9

    .line 1167
    :catch_20
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :try_start_25
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_20

    goto :goto_9
.end method

.method public showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .registers 9
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    const/4 v2, 0x0

    .line 1107
    const-string/jumbo v3, "showDialog"

    invoke-direct {p0, v3}, isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    move v0, v2

    .line 1138
    :goto_b
    return v0

    .line 1111
    :cond_c
    const/4 v0, 0x1

    .line 1112
    .local v0, "Result":Z
    invoke-direct {p0}, startClipboardUIServiceService()V

    .line 1113
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2d

    .line 1114
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_2d
    :try_start_2d
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_41

    .line 1119
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3f

    .line 1120
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "showDialog - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    move v0, v2

    .line 1122
    goto :goto_b

    .line 1126
    :cond_41
    invoke-virtual {p0}, isFiltered()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1127
    iput-object p2, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1128
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1129
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_75} :catch_76

    goto :goto_b

    .line 1134
    :catch_76
    move-exception v1

    .line 1135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1136
    const/4 v0, 0x0

    goto :goto_b

    .line 1131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7c
    :try_start_7c
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, mFormatid:I

    iget-object v4, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1132
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b6} :catch_76

    goto/16 :goto_b
.end method

.method public showUIDataDialog()V
    .registers 1

    .prologue
    .line 1148
    invoke-virtual {p0}, showDialog()V

    .line 1149
    return-void
.end method

.method public showUIFloatingIcon()V
    .registers 3

    .prologue
    .line 816
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "showUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .registers 4

    .prologue
    .line 250
    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 272
    :cond_9
    :goto_9
    return-void

    .line 254
    :cond_a
    :try_start_a
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 255
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 256
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 266
    :catch_1d
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 268
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    :try_start_2e
    iget-object v1, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_3c

    .line 262
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    goto :goto_9

    .line 264
    :cond_3c
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_44} :catch_1d

    goto :goto_9
.end method

.method public updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .registers 7
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1055
    const-string/jumbo v1, "updateClipboard"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1088
    :cond_9
    :goto_9
    return-void

    .line 1059
    :cond_a
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 1060
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_33
    invoke-virtual {p0}, hasAppClipboardListener()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1063
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1064
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1070
    :cond_59
    :try_start_59
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_71

    .line 1071
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1072
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6b} :catch_6c

    goto :goto_9

    .line 1085
    :catch_6c
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1077
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_71
    :try_start_71
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1078
    iput-object p2, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1079
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1080
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1081
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard - listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a1} :catch_6c

    goto/16 :goto_9
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 7
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 426
    const-string/jumbo v1, "updateData"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 456
    :cond_9
    :goto_9
    return-void

    .line 430
    :cond_a
    iget-object v1, p0, mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_2c

    .line 431
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 432
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 437
    :cond_2c
    :try_start_2c
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_67

    .line 439
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 440
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_61} :catch_62

    goto :goto_9

    .line 452
    :catch_62
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    :try_start_67
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 446
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 447
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 448
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - clPasteEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_91} :catch_62

    goto/16 :goto_9
.end method

.method public updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .registers 7
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 934
    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 959
    :cond_9
    :goto_9
    return-void

    .line 938
    :cond_a
    invoke-virtual {p0}, isFiltered()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 939
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 940
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 946
    :cond_30
    :try_start_30
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_48

    .line 947
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 948
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_42} :catch_43

    goto :goto_9

    .line 956
    :catch_43
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    :try_start_48
    iput-object p2, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 954
    invoke-static {}, getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 955
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_78} :catch_43

    goto :goto_9
.end method
