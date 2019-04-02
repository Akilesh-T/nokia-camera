.class Lcom/android/camera/device/WarmUpCameraController$Singleton;
.super Ljava/lang/Object;
.source "WarmUpCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/WarmUpCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/device/WarmUpCameraController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/device/WarmUpCameraController;

    invoke-direct {v0}, Lcom/android/camera/device/WarmUpCameraController;-><init>()V

    sput-object v0, Lcom/android/camera/device/WarmUpCameraController$Singleton;->INSTANCE:Lcom/android/camera/device/WarmUpCameraController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
