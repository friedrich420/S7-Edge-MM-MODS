.class Landroid/widget/DatePickerCalendarDelegate$3;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, this$0:Landroid/widget/DatePickerCalendarDelegate;

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V
    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->access$300(Landroid/widget/DatePickerCalendarDelegate;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 290
    :goto_c
    return-void

    .line 284
    :pswitch_d
    iget-object v0, p0, this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_c

    .line 287
    :pswitch_14
    iget-object v0, p0, this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x0

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_c

    .line 282
    nop

    :pswitch_data_1c
    .packed-switch 0x102038b
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method
