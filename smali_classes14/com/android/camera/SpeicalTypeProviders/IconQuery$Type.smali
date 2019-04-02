.class public final enum Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;
.super Ljava/lang/Enum;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SpeicalTypeProviders/IconQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

.field public static final enum BADGE:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

.field public static final enum DIALOG:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

.field public static final enum EDITOR:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

.field public static final enum INTERACT:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

.field public static final enum SEARCH:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;


# instance fields
.field private final dimensionResourceId:I

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    const-string v1, "BADGE"

    const-string v2, "badge"

    const v3, 0x7f090184

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->BADGE:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    .line 32
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    const-string v1, "INTERACT"

    const-string v2, "interact"

    const v3, 0x7f0901f5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->INTERACT:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    .line 34
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    const-string v1, "DIALOG"

    const-string v2, "dialog"

    const v3, 0x7f0901f5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->DIALOG:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    .line 35
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    const-string v1, "SEARCH"

    const-string v2, "search"

    const v3, 0x7f09023d

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->SEARCH:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    .line 36
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    const-string v1, "EDITOR"

    const-string v2, "editor"

    const v3, 0x7f0901ca

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->EDITOR:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->BADGE:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->INTERACT:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->DIALOG:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->SEARCH:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->EDITOR:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "dimensionResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->path:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->dimensionResourceId:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-virtual {v0}, [Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    return-object v0
.end method


# virtual methods
.method public getDimensionResourceId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->dimensionResourceId:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->path:Ljava/lang/String;

    return-object v0
.end method
