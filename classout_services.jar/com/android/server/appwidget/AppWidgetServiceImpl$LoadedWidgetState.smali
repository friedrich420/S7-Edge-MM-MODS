.class Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadedWidgetState"
.end annotation


# instance fields
.field final hostTag:I

.field final providerTag:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field final widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    .registers 5
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p3, "hostTag"    # I
    .param p4, "providerTag"    # I

    .prologue
    .line 4066
    iput-object p1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4067
    iput-object p2, p0, widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4068
    iput p3, p0, hostTag:I

    .line 4069
    iput p4, p0, providerTag:I

    .line 4070
    return-void
.end method
