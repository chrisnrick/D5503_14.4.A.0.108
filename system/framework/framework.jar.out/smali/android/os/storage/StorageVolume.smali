.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescriptionId:I

.field private final mEmulated:Z

.field private mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private mState:Ljava/lang/String;

.field private mStorageId:I

.field private mUserLabel:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v0, v2

    .line 85
    goto :goto_2

    :cond_3
    move v1, v2

    .line 87
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/storage/StorageVolume$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
    .param p2, "descriptionId"    # I
    .param p3, "primary"    # Z
    .param p4, "removable"    # Z
    .param p5, "emulated"    # Z
    .param p6, "mtpReserveSpace"    # I
    .param p7, "allowMassStorage"    # Z
    .param p8, "maxFileSize"    # J
    .param p10, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 69
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 70
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 71
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 72
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 73
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 74
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 75
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 76
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 77
    return-void
.end method

.method public static fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;
    .locals 11
    .param p0, "template"    # Landroid/os/storage/StorageVolume;
    .param p1, "path"    # Ljava/io/File;
    .param p2, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 96
    new-instance v0, Landroid/os/storage/StorageVolume;

    iget v2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    iget-boolean v3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    iget-boolean v4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iget-boolean v5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iget v6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iget-boolean v7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iget-wide v8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    move-object v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 276
    const-string v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 278
    const-string v0, "mStorageId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v0, "mPath"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v0, "mDescriptionId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string v0, "mPrimary"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v0, "mRemovable"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v0, "mEmulated"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string v0, "mMtpReserveSpace"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v0, "mAllowMassStorage"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v0, "mMaxFileSize"

    iget-wide v1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v0, "mOwner"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v0, "mUuid"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v0, "mUserLabel"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    const-string v0, "mState"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 292
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 256
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 257
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 258
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 260
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    return v0
.end method

.method public getFatVolumeId()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 228
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setMaxFileSize(J)V
    .locals 0
    .param p1, "updatedSize"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 209
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setStorageId(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 166
    return-void
.end method

.method public setUserLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "userLabel"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 271
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 323
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    return-void

    :cond_0
    move v0, v2

    .line 316
    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_1

    :cond_2
    move v0, v2

    .line 318
    goto :goto_2

    :cond_3
    move v1, v2

    .line 320
    goto :goto_3
.end method
