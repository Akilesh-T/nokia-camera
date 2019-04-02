.class Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;
.super Ljava/lang/Thread;
.source "BarCodeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportEmail"
.end annotation


# instance fields
.field private email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p2, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 947
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 951
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 952
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1302(Lcom/android/camera/barcode/BarCodeUI;Z)Z

    .line 953
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1400(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    .line 954
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1302(Lcom/android/camera/barcode/BarCodeUI;Z)Z

    .line 955
    return-void
.end method
