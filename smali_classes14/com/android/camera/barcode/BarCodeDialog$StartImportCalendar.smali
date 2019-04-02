.class Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;
.super Ljava/lang/Thread;
.source "BarCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportCalendar"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 864
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 865
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 869
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 870
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$602(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeDialog;->addCalendarEvent(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$602(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 878
    return-void

    .line 873
    :catch_0
    move-exception v0

    goto :goto_0
.end method
