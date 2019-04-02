.class Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;
.super Ljava/lang/Thread;
.source "BarCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportContacts"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 729
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 733
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 734
    iget-object v2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$402(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v0, v2, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .line 737
    .local v0, "contactInfo":Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
    iget-object v2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v3, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/barcode/BarCodeDialog;->addContacts(Landroid/app/Activity;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v0    # "contactInfo":Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/barcode/BarCodeDialog;->access$402(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 743
    return-void

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
