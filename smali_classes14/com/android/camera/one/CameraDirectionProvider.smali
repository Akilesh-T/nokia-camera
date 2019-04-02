.class public Lcom/android/camera/one/CameraDirectionProvider;
.super Ljava/lang/Object;
.source "CameraDirectionProvider.java"


# instance fields
.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/CameraDirectionProvider;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 30
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/CameraDirectionProvider;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
