.class Lcom/android/camera/util/AndroidServices$Singleton;
.super Ljava/lang/Object;
.source "AndroidServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/AndroidServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/util/AndroidServices;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/util/AndroidServices;

    .line 53
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/AndroidServices;-><init>(Landroid/content/Context;Lcom/android/camera/util/AndroidServices$1;)V

    sput-object v0, Lcom/android/camera/util/AndroidServices$Singleton;->INSTANCE:Lcom/android/camera/util/AndroidServices;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/util/AndroidServices;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/util/AndroidServices$Singleton;->INSTANCE:Lcom/android/camera/util/AndroidServices;

    return-object v0
.end method
