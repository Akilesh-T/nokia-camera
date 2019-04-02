.class public Lcom/android/camera/session/StackSaverFactory;
.super Ljava/lang/Object;
.source "StackSaverFactory.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/session/StackSaverFactory;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Landroid/location/Location;)Lcom/android/camera/session/StackSaver;
    .locals 3
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/session/StackSaverImpl;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/session/StackSaverFactory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/camera/session/StackSaverImpl;-><init>(Ljava/io/File;Landroid/location/Location;Landroid/content/ContentResolver;)V

    return-object v0
.end method
