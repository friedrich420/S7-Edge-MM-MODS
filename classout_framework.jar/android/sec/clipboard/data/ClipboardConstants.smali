.class public Landroid/sec/clipboard/data/ClipboardConstants;
.super Ljava/lang/Object;
.source "ClipboardConstants.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "android.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "android.intent.action.SECONTAINER_REMOVED"

.field public static final ADD_ITEM:I = 0x1

.field public static final CAT_USERID_ADJUST_FACTOR:I = 0x3e8

.field public static final CLIPBOARD_DELETE_CLIPS_PATH:Ljava/lang/String; = "/data/clipboard/deletedClips.xml"

.field public static final CLIPBOARD_DRAGNDROP:Ljava/lang/String; = "clipboarddragNdrop"

.field public static final CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field public static final CLIPBOARD_ROOT_PATH_TEMP:Ljava/lang/String; = "/data/clipboard/temp/"

.field public static final CLIPBOARD_SECONTAINER_ROOT_PATH:Ljava/lang/String; = "/data/clipboard/secontainer"

.field public static final CLIPBOARD_SHARED_PATH:Ljava/lang/String; = "/shared"

.field public static DEBUG:Z = false

.field public static final DELETEALL_ITEM:I = 0x3

.field public static final DELETE_ITEM:I = 0x2

.field public static final FILE_VERSION:I = 0x1

.field public static final FORMAT_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final FORMAT_HTML_FLAGMENT:Ljava/lang/String; = "HTMLFlagment"

.field public static final FORMAT_INTENT:Ljava/lang/String; = "Intent"

.field public static final FORMAT_MULTIPLE_TYPE:Ljava/lang/String; = "MultipleType"

.field public static final FORMAT_MULTIPLE_URI:Ljava/lang/String; = "MultipleUri"

.field public static final FORMAT_TEXT:Ljava/lang/String; = "Text"

.field public static final FORMAT_URI:Ljava/lang/String; = "Uri"

.field public static final GENERIC_CATEGORY_END:I = 0x1f4

.field public static final GENERIC_CATEGORY_START:I = 0xc9

.field public static final GOOD_CATEGORY:I = 0x66

.field public static final HAS_KNOX_FEATURE:Z

.field public static final HTML_PREVIEW_IMAGE_NAME:Ljava/lang/String; = "previewhtemlclipboarditem"

.field public static INFO_DEBUG:Z = false

.field public static final KNOX_CLIPBOARD_DELETE_CLIPS_PATH:Ljava/lang/String; = "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

.field public static final MAX_DATA_COUNT:I = 0x14

.field public static final MULTIWINDOW_DRAGNDROP:Ljava/lang/String; = "MultiWindow_DragDrop"

.field public static final PERSONA_CATEGORY_END:I = 0x4aa

.field public static final PERSONA_CATEGORY_START:I = 0x44c

.field public static final PERSONA_USERID_END:I = 0xc2

.field public static final PERSONA_USERID_START:I = 0x64

.field public static final SAFETY_STRING_LENGTH:I = 0x20000

.field public static final SUPPORT_KNOX:Z

.field public static final THUMBNAIL_SUFFIX:Ljava/lang/String; = "_thum.jpg"

.field public static final TIMESTAMP_GAP:J = 0x186a0L

.field public static final TIMESTAMP_INTERVAL:J = 0x278d00L

.field public static final USER_ADDED:Ljava/lang/String; = "ADDED"

.field public static final USER_REMOVED:Ljava/lang/String; = "REMOVED"

.field public static final USER_SWITCHED:Ljava/lang/String; = "SWITCHED"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, DEBUG:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, INFO_DEBUG:Z

    .line 43
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SUPPORT_KNOX:Z

    .line 44
    const-string/jumbo v0, "ro.config.knox"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, HAS_KNOX_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
