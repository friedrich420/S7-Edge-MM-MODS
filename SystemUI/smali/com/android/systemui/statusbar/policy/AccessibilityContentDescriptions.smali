.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0d01ea
        0x7f0d01eb
        0x7f0d01ec
        0x7f0d01ed
        0x7f0d01ef
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x7f0d01ea
        0x7f0d01eb
        0x7f0d01ec
        0x7f0d01ed
        0x7f0d01ee
        0x7f0d01ef
    .end array-data

    .line 32
    :array_2
    .array-data 4
        0x7f0d01f0
        0x7f0d01f1
        0x7f0d01f2
        0x7f0d01f3
        0x7f0d01f4
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x7f0d01fb
        0x7f0d01fa
        0x7f0d01f9
        0x7f0d01f8
        0x7f0d01f7
    .end array-data

    .line 50
    :array_4
    .array-data 4
        0x7f0d0201
        0x7f0d0202
    .end array-data
.end method
