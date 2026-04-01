def generate_commands(os_type):
    if os_type == "ubuntu":
        return """### Step 1: Create a new user and set a password
1. Create the user `devuser`:
   ```bash
   sudo adduser devuser
   ```
   *(This interactive command will prompt you to set and confirm a password, and fill in optional details.)*

### Step 2: Grant devuser sudo privileges
1. Add the user to the `sudo` group:
   ```bash
   sudo usermod -aG sudo devuser
   ```

### Step 3: Create a group and add devuser to it
1. Create the group `appgroup`:
   ```bash
   sudo groupadd appgroup
   ```
2. Add `devuser` to `appgroup`:
   ```bash
   sudo usermod -aG appgroup devuser
   ```

### Step 4: Restrict access to /opt/apps
1. Create the directory if it doesn't exist:
   ```bash
   sudo mkdir -p /opt/apps
   ```
2. Change the group ownership of the directory to `appgroup`:
   ```bash
   sudo chown :appgroup /opt/apps
   ```
3. Set the permissions so only the owner and group members can read, write, and execute in it (and others have no access):
   ```bash
   sudo chmod 770 /opt/apps
   ```

### Step 5: Verify user’s group membership and permissions
1. To verify the groups `devuser` belongs to, run:
   ```bash
   groups devuser
   ```
   *(Expected output: `devuser : devuser sudo appgroup`)*

2. To verify the permissions on `/opt/apps`, run:
   ```bash
   ls -ld /opt/apps
   ```
   *(Expected output should show `drwxrwx---` with `root` as owner and `appgroup` as the group.)*"""
    else:
        return """### Step 1: Create a new user and set a password
1. Create the user `devuser`:
   ```bash
   sudo useradd devuser
   ```
2. Set a password for `devuser`:
   ```bash
   sudo passwd devuser
   ```

### Step 2: Grant devuser sudo privileges
1. Add the user to the `wheel` group (standard for RedHat/Amazon Linux):
   ```bash
   sudo usermod -aG wheel devuser
   ```

### Step 3: Create a group and add devuser to it
1. Create the group `appgroup`:
   ```bash
   sudo groupadd appgroup
   ```
2. Add `devuser` to `appgroup`:
   ```bash
   sudo usermod -aG appgroup devuser
   ```

### Step 4: Restrict access to /opt/apps
1. Create the directory if it doesn't exist:
   ```bash
   sudo mkdir -p /opt/apps
   ```
2. Change the group ownership of the directory to `appgroup`:
   ```bash
   sudo chown :appgroup /opt/apps
   ```
3. Set the permissions so only the owner and group members can read, write, and execute in it (and others have no access):
   ```bash
   sudo chmod 770 /opt/apps
   ```

### Step 5: Verify user’s group membership and permissions
1. To verify the groups `devuser` belongs to, run:
   ```bash
   groups devuser
   ```
   *(Expected output: `devuser : devuser wheel appgroup`)*

2. To verify the permissions on `/opt/apps`, run:
   ```bash
   ls -ld /opt/apps
   ```
   *(Expected output should show `drwxrwx---` with `root` as owner and `appgroup` as the group.)*"""

print("Ubuntu/Debian:")
print(generate_commands("ubuntu"))
print("\nAmazon Linux/RHEL:")
print(generate_commands("rhel"))

