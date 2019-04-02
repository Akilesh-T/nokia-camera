.class public Lcom/android/camera/util/AndroidContext;
.super Ljava/lang/Object;
.source "AndroidContext.java"


# static fields
.field private static sInstance:Lcom/android/camera/util/AndroidContext;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/util/AndroidContext;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/util/AndroidContext;->sInstance:Lcom/android/camera/util/AndroidContext;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/camera/util/AndroidContext;

    invoke-direct {v0, p0}, Lcom/android/camera/util/AndroidContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/util/AndroidContext;->sInstance:Lcom/android/camera/util/AndroidContext;

    .line 38
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/camera/util/AndroidContext;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/util/AndroidContext;->sInstance:Lcom/android/camera/util/AndroidContext;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Android context was not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sget-object v0, Lcom/android/camera/util/AndroidContext;->sInstance:Lcom/android/camera/util/AndroidContext;

    return-object v0
.end method

.method public static isValid()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/util/AndroidContext;->sInstance:Lcom/android/camera/util/AndroidContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/util/AndroidContext;->mContext:Landroid/content/Context;

    return-object v0
.end method
