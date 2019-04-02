.class Lcom/android/camera/processing/ProcessingServiceManager$Singleton;
.super Ljava/lang/Object;
.source "ProcessingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/processing/ProcessingServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/camera/processing/ProcessingServiceManager;

    .line 41
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/ProcessingServiceManager;-><init>(Landroid/content/Context;Lcom/android/camera/processing/ProcessingServiceManager$1;)V

    sput-object v0, Lcom/android/camera/processing/ProcessingServiceManager$Singleton;->INSTANCE:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager$Singleton;->INSTANCE:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method
