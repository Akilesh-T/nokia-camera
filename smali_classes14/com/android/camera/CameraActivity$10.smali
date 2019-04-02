.class Lcom/android/camera/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->setupNfcBeamPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/camera/CameraActivity$10;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 1
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/camera/CameraActivity$10;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2800(Lcom/android/camera/CameraActivity;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
